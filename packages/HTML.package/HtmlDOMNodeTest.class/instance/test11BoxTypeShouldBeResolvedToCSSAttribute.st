testing
test11BoxTypeShouldBeResolvedToCSSAttribute

	self domNode addStyle: (CSSStyleRule fromDictionary: (Dictionary newFrom: { 'display' -> 'inline-block' })).
	self assert: self domNode boxType equals: #inlineBlock