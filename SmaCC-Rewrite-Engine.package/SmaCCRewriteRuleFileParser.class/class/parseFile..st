accessing
parseFile: aString
	| stream |
	stream := FileStream read: aString.
	^[| parser |
	parser := self on: stream.
	parser filename: aString.
	(parser parse)
		filename: aString;
		finishedLoading;
		yourself] ensure: [stream close]