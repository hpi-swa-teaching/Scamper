parsing
parseAttributes: attrString

	| attrs in s |
	attrs := Dictionary new. 

	s := attrString trimBoth.
	(s endsWith: '/') ifTrue: [ s:= s first: (s size-1) ].

	in := ReadStream on: s trimBoth.

	[in atEnd] whileFalse:
	[
		| k v pos |
		in skipSeparators.
		pos := in position.
		v := nil.
		k := in upTo: $=.
		k := k trimBoth.
		(k includes: $ ) ifTrue: "Looks like there is no value. "
		[			
			in position: pos. 
			k:= in upTo: $ . 
		]
		ifFalse:
		[
			in skipSeparators.
			in atEnd ifFalse:
			[
				(in next = $") ifTrue: [v := in upTo: $"]
				ifFalse:
				[
					in back.
					(in next = $') ifTrue: [v := in upTo: $']
					ifFalse:
					[
						in back.
						v := in upTo: $ .
						self addError: (HtmlAttributeValueNotQuotedError new attribute: k).
					]
				]		 
			]
		].

		attrs at: k ifPresent:
		[:val | 
			self addError: (HtmlAttributeMultiplySpecifiedError new 
				attribute: k; value: v value: val).
		].
		attrs at: k put: v.
	].
	self attributes: attrs.