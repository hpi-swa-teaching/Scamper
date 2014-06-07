as yet unclassified
evaluateLocalStylesFor: aDomNode
	| styles |
	styles := Dictionary new.
	aDomNode styles do: [:style | 
		style properties do: [:prop | self parseCSSProperty: prop into: styles ]].
	aDomNode computedStyles: styles