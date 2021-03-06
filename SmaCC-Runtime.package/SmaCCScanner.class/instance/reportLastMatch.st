private
reportLastMatch
	"The scanner has found the end of a token and must report it"

	| string action |
	self checkForValidMatch.
	self resetOutputToLastMatch.
	stream position: matchEnd.
	string := outputStream contents.
	self checkForKeyword: string.
	action := matchActions isSymbol
		ifTrue:
			["This is only necessary to run version 1 parsers on version 2 SmaCC"
			matchActions]
		ifFalse: [self tokenActions at: matchActions first ifAbsent: [nil]].
	^action notNil ifTrue: [self perform: action] ifFalse: [self createTokenFor: string]