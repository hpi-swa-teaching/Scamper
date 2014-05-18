accessing
checkForUnescapedCharacters

	| str |

	self parent isComment ifTrue: [^self].
	str := self innerContents.

	str withIndexDo: 	
	[:ea :idx |
		(HtmlUnescapedSpecialCharacterError specialCharacters includes: ea) ifTrue: 
		[
		
			ea = $& ifFalse:
			[
				self addError: 
					(HtmlUnescapedSpecialCharacterError new position: self start + idx)
			]
			ifTrue:
			[
				(str size > idx and: [(str at: idx+1) = $#]) ifFalse:
				[
					| strm s |

					strm := ReadStream on: str.
					strm position: idx.
					s := strm upTo: $;.
					((s includes: $ ) or: [s size > 6 or:[s size < 3]]) ifTrue:
					[
						(s = 'lt' or: [s = 'gt']) ifFalse:
						[
							self addError: 
							(HtmlUnescapedSpecialCharacterError new position: self start + idx)						
						]
					]					
				]
			]
		]	
	]