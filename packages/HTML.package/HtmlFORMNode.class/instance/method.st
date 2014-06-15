accessing
method
	"method to submit with"
	^self attributes at: 'method' ifAbsent: ['get']