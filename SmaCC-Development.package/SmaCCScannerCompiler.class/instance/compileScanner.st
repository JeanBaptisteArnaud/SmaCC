compiling
compileScanner
	| regex |
	regex := self createRegex.
	self compileTokenIdMethods.
	self compileMethodsFor: regex