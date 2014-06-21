parsing
readBackgroundColorAttribute: propertyValue to: aContext 
	aContext at: #backgroundColor put: (Color fromHTMLString: propertyValue).