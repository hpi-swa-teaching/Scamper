layout
layoutChanged
	self suppressLayoutUpdates ifTrue: [ ^ self ].
	
	self adjustBoundsToSubmorphs
		ifFalse: [ super layoutChanged ]