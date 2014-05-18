as yet unclassified
newForTag: aTag 

	| node className cls tag |

	tag := aTag trimBoth.
	node := nil.

	className := ('Html',tag asUppercase,'Node') asSymbol.

	cls := Smalltalk at: className ifAbsent: [HtmlDOMNode].

	node := cls new tag: tag;
			hasTrailingSlash: false; 
			attributes: Dictionary new.

	tag asLowercase = tag ifFalse: 
	[
		node addError: (HtmlTagNotLowerCaseError new tag: tag).
	].

	^node.	
