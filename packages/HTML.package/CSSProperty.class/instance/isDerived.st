accessing
isDerived
	"Answer the value of isDerived"

	isDerived isNil ifTrue: [isDerived := false].
	^ isDerived