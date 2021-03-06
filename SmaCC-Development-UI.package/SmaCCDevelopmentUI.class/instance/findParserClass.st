actions
findParserClass
	| className class text |
	self scannerClassString isEmpty
		ifTrue: [ ^ UIManager default inform: 'Undefined scanner class' ].
	className := self
		choose: 'What class do you want to use?'
		from: ((SmaCCParser allSubclasses collect: [ :c | c name ]) reject: [ :c | c = 'SmaCCGLRParser' ]) asSortedCollection.
	className notNil
		ifTrue: [ 
			parserClassMorph hResizing: #rigid.
			parserClassMorph
				newContents: '';
				newContents: className.
			parserClassMorph changed: #updateWindowLabel.
			class := Smalltalk at: className asSymbol ifAbsent: [ ^ self ].
			(class class includesSelector: #definitionComment)
				ifTrue: [ 
					text := self removeCommentedPartOf: (class class sourceCodeAt: #definitionComment).
					self definition: text ]
				ifFalse: [ 
					(class class includesSelector: #parserDefinitionComment)
						ifTrue: [ 
							| scannerText "Old style, force conversion." parserText |
							(self scannerClass class includesSelector: #scannerDefinitionComment)
								ifTrue: [ scannerText := self removeCommentedPartOf: (self scannerClass class sourceCodeAt: #scannerDefinitionComment) ]
								ifFalse: [ scannerText := '' ].
							parserText := self removeCommentedPartOf: (class class sourceCodeAt: #parserDefinitionComment).
							self
								definition:
									'#Definition extracted from old style definition comments
' , scannerText
										,
											'
' , parserText ] ] ]