parsing
readColorFrom: aProperty to: aContext

	(Color fromHTMLString: aProperty propertyString) 
		ifNotNilDo: [ :color | self put: color at: #color to: aContext ]