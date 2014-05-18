accessing
loader
	"Answer the value of loader"

	^ loader isNil ifTrue: [loader := HtmlCache new] ifFalse: [loader]