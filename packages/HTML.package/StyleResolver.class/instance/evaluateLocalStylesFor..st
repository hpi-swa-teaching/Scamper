private-resolution
evaluateLocalStylesFor: aDomNode
	| styles |
	styles := Dictionary new.
	aDomNode styles do: [:style | 
		style properties do: [:prop | self parseCSSProperty: prop of: aDomNode into: styles ]].
	aDomNode computedStyles: styles