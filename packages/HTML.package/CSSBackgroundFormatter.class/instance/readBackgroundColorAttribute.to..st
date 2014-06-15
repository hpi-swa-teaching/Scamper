parsing
readBackgroundColorAttribute: aCSSProperty to: aContext 
	aContext at: #backgroundColor put: (Color fromHTMLString: aCSSProperty propertyString).