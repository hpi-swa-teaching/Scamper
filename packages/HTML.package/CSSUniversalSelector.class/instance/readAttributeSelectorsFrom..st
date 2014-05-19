accessing
readAttributeSelectorsFrom: in

	| c |

	in skipSeparators.
	c := in peek.
	[c isNil or: [c isSeparator]] whileFalse:
	[
		c = $. ifTrue: [self addSelector: (CSSClassSelector readFrom: in)] ifFalse:[
		c = $# ifTrue: [self addSelector: (CSSIDSelector readFrom: in)] ifFalse:[
		c = $[ ifTrue: [self addSelector: (CSSAttributeSelector readFrom: in)] ifFalse:[
		c = $: ifTrue: [self addSelector: (CSSPseudoClassSelector readFrom: in)] ifFalse:[
		^self]]]].
		
		c := in peek.
	]