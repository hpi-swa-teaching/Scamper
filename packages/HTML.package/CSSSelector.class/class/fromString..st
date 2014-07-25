instance creation
fromString: aString

	(aString includes: $,) 
	ifTrue:
	[
		| in list |
		in := ReadStream on: (aString, ' ').
		list := OrderedCollection new.
		[in atEnd] whileFalse:
		[
			| sel |
			sel := CSSSelector oneSelectorFromString: (in upTo: $,).
			sel isNil ifTrue: [^CSSInvalidSelector new selectorString: aString].
			list add: sel.
		].
			
		^CSSOrSelector new selectors: list asArray
	]
	ifFalse:
	[
		| sel |
		sel := CSSSelector oneSelectorFromString: aString.
		^sel isNil ifTrue: [CSSInvalidSelector new selectorString: aString] ifFalse: [sel]
	]