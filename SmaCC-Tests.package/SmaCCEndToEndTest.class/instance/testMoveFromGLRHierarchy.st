public
testMoveFromGLRHierarchy
	| parserCompiler |
	SmaCCGLRParser
		subclass: #FooParser
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'SmaCC-Tests'.
	(Smalltalk at: #FooParser)
		subclass: #TestParser
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'SmaCC-Tests'.
	parserCompiler := SmaCCGrammarCompiler new.
	parserCompiler
		buildDefinition:
			'%ignorecase;
			<a> : \{ | \< \% ;
			<all> : .;
			%id <_all> <a> <all>;  
			begin : A {true}
					| All {false};
			A : <a> ;
			All: <_all>;'.
	parserCompiler compileInto: 'TestScanner' andParser: 'TestParser'.
	self assert: self parserClass superclass name asString = 'SmaCCParser'