testing
test02LastRuleShouldOverrideAllOthers
	"https://developer.mozilla.org/en-US/docs/Web/CSS/Shorthand_properties"
	| props result |
	<timeout: 300>
	props := CSSStyleRule new 
		addProperty: ((CSSProperty propertyNamed: 'font-style') propertyString: 'italic');
		addProperty: ((CSSProperty propertyNamed: 'font-weight') propertyString: 'bold');
		addProperty: ((CSSProperty propertyNamed: 'font') propertyString: 'normal').
		
	result := self htmlFormatter parseTextAttributes: (OrderedCollection newFrom: {props}).

	self deny: (result anySatisfy: [:textAttr | textAttr emphasisCode = TextEmphasis italic emphasisCode]).
	self deny: (result anySatisfy: [:textAttr | textAttr emphasisCode = TextEmphasis bold emphasisCode])