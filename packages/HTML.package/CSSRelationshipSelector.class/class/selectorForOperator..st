instance creation
selectorForOperator: aString

	^(self subclasses detect:[:ea | ea operator = aString] ifNone: [CSSDescendantSelector]) new