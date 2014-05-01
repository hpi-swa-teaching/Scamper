updating
update: aParameter

	super update: aParameter.
	aParameter == self symbol ifTrue: self block