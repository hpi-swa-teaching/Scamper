testing
suppliesInput
	"whether we actually have input to supply"
	self type = 'text' ifTrue: [ ^true ].
	^false