testing
test01StylesShouldBeForwardedToTheCorrectFormatter
	| props result map prefixes |
	map := Dictionary new.
	self htmlFormatter cssPrefixMap: map.
	prefixes := { 
		{'font'. {'font'. 'font-style'. 'font-weight'}}}.
	
	prefixes do: [:prefix |
		map at: prefix first put: 	(CSSFormatterMock newWithReturnValue: {prefix first}).
		prefix last do: [:attributeName |
			props := CSSStyleRule new addProperty: (CSSProperty propertyNamed: attributeName).
			result := self htmlFormatter parseTextAttributes: (OrderedCollection newFrom: {props}).

			self assert: result includes: prefix first ] ]