testing
test02LastRuleShouldOverrideAllOthers
	"https://developer.mozilla.org/en-US/docs/Web/CSS/Shorthand_properties"
	| props node |

	props := CSSStyleRule new 
		addProperty: ((CSSProperty propertyNamed: 'font-style') propertyString: 'italic');
		addProperty: ((CSSProperty propertyNamed: 'font-weight') propertyString: 'bold');
		addProperty: ((CSSProperty propertyNamed: 'font') propertyString: 'normal').
	
	node := HtmlDOMNode new 
				addStyle: props;
				yourself.
		
	self styleResolver evaluateLocalStylesFor: node.

	self assert: (node computedStyles at: #italic) equals: false.
	self assert: (node computedStyles at: #bold) equals: false