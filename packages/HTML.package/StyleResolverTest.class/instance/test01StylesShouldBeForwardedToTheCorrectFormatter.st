testing
test01StylesShouldBeForwardedToTheCorrectFormatter
	| result mappings |
	mappings := { 
		{CSSFontFormatter. {'font'. 'font-style'. 'font-weight'. 'font-size'}}}.
	
	mappings do: [:mapping |
		mapping last do: [:attributeName |
			| prop |
			prop := CSSProperty propertyNamed: attributeName.
			result := self styleResolver getFormatterFor: prop.

			self assert: result class equals: mapping first ] ]