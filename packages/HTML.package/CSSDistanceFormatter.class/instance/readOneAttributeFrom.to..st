parsing
readOneAttributeFrom: aPropertyValue to: aContext

		self put: aPropertyValue at: 'top' to: aContext.
		self put: aPropertyValue at: 'right' to: aContext. 
		self put: aPropertyValue at: 'bottom' to: aContext. 
		self put: aPropertyValue at: 'left' to: aContext