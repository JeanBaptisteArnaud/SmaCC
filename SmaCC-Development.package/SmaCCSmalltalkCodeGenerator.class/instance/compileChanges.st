compiling
compileChanges
	self removeUnnecessaryChanges.
	RBRefactoryChangeManager instance performChange: self changes.
	parserClass realClass ifNotNil: [ :each | each resetCaches ].
	scannerClass realClass ifNotNil: [ :each | each initializeKeywordMap ]