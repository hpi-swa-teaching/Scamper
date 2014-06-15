accessing
encoding
	"encoding for posting"
	^self attributes at: 'enctype' ifAbsent: [nil].  