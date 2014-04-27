attributes
label
	"label to be displayed for this morph"
	^self getAttribute: 'label' ifAbsent: [self textualContents]