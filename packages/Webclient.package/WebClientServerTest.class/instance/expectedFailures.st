setup
expectedFailures
	"Some old versions of HTTPSocket are broken"

	((HTTPSocket respondsTo: #httpRequestHandler:)
		or:[SystemVersion current version beginsWith: 'Pharo']) 			ifFalse:[^#(testMultipartFiles2)].

	^#()