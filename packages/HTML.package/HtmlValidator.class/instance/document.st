accessing
document
	"Answer the value of document"

	document isNil ifTrue: 
	[
		url isNil 
			ifTrue: [nil]
			ifFalse: 
			[
				document := self loader documentForUrl: self url.
				loader url: document url.
			] 
	].
	^document 