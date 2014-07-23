instance creation
readFrom: in

	| out |
	in peek = $[ ifFalse: [self halt].
	in next.
	out := WriteStream on: String new.
	[in atEnd not and: [in peek isLetter or: [in peek isDigit or:['-_' includes: in peek]]]] 
		whileTrue:[out nextPut: in next].

	in skipSeparators.
	in peek = $] ifTrue:
	[
		in next.
		^CSSAttributeExistsSelector new attribute: out contents
	]
	ifFalse:
	[
		| sel val |
		sel := nil.
		in peek = $= ifTrue: [sel := CSSAttributeEqualsSelector new attribute: out contents]
		ifFalse: 
		[
		 	(in peek = $~ and: [in next. in peek = $=]) 
			ifTrue: [sel := CSSAttributeIncludesSelector new attribute: out contents]
			ifFalse: 
			[
				(in peek = $| and: [in next. in peek = $=]) 
				ifTrue:[sel := CSSAttributeBeginsWithSelector new attribute: out contents]
				ifFalse:
				[
					(in peek = $^ and: [in next. in peek = $=]) ifTrue:
					[sel := CSSAttributeHasPrefixSelector new attribute: out contents]
					ifFalse:
					[
						(in peek = $$ and: [in next. in peek = $=]) ifTrue:
						[
							sel := CSSAttributeHasSuffixSelector new attribute: out contents
						]
						ifFalse:
						[
							(in peek = $* and: [in next. in peek = $=]) ifTrue:
							[
								sel := CSSAttributeHasSubstringSelector new 
									attribute: out contents
							]
							ifFalse:
							[
								in upTo: $].
								^CSSInvalidAttributeSelector new attribute: out contents
							]
						]
					]
				]
			]
		].
		in next. "Skip ="
		in skipSeparators.
		in peek = $" 
			ifTrue:[in next. val := in upTo: $"]
			ifFalse:
			[
				in peek = $' 
					ifTrue:[in next. val := in upTo: $']
					ifFalse:
					[
						out := WriteStream on: String new.
						[in peek isLetter or: [in peek isDigit or: ['-.' includes: in peek]]]
						whileTrue: [out nextPut: in next].
						val := out contents.
					]
			].
		in next. "Consume the last ]"
		^sel value: val
	]
	