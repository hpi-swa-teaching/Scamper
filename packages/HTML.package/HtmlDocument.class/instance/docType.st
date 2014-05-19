accessing
docType
	"Answer the value of docType"

	docType isNil ifTrue: [docType := Html401Strict docType].
	^docType