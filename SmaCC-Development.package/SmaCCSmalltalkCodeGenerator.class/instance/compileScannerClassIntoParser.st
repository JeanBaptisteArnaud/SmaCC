compiling
compileScannerClassIntoParser
	| stream |
	stream := WriteStream with: String new.
	stream
		nextPutAll: 'scannerClass';
		cr;
		tab;
		nextPutAll: '^';
		nextPutAll: scannerClass name.
	parserClass theMetaClass compile: stream contents classified: #'generated-accessing'