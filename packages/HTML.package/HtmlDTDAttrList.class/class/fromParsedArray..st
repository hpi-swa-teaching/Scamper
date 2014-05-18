as yet unclassified
fromParsedArray: anArray

	| tag attrs list |

	tag := anArray first.
	attrs := anArray copyWithoutFirst.
	list := OrderedCollection new.

	attrs do: 
	[:ea |

		| in attribute type required |

		in := ReadStream on: ea.

		[in atEnd] whileFalse: 
		[
			attribute := self readExpression: in.
			type := self readExpression: in.
			required := self readExpression: in.
			required = '#FIXED' ifTrue: [in upTo: $'. type := ('(',(in upTo: $'),')')].
			in skipSeparators.
			list add: (HtmlDTDAttribute new attribute: attribute;
						type: type; isRequired: required).
		]
	].

	^self new tag: tag; attributes: list asArray
		