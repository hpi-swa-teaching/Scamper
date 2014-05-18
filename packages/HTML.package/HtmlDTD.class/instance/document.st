accessing
document
	"Answer the value of document"

	^ document isNil 
		ifFalse: [document]
		ifTrue: [url isNil ifFalse: [document := url asUrl retrieveContents] ifTrue: [nil]] 