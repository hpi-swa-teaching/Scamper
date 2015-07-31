parsing
readOneAttributeFrom: aPropertyValue to: aContext

		self put: aPropertyValue at: 'top', self class attributeSuffix to: aContext.
		self put: aPropertyValue at: 'right', self class attributeSuffix to: aContext. 
		self put: aPropertyValue at: 'bottom', self class attributeSuffix to: aContext. 
		self put: aPropertyValue at: 'left', self class attributeSuffix to: aContext