instance creation
oneSelectorFromString: aString

	| in sel lastOperator pos operators |
	operators := CSSRelationshipSelector operators.
	in := ReadStream on: aString.
	sel := nil.
	lastOperator := ' '.
	in skipSeparators.
	pos := -5.
	[in atEnd] whileFalse:
	[
		| c |
		in position = pos ifTrue: [^CSSInvalidSelector new selectorString: aString]. "Infinite loop detection"
		pos := in position.
		c := in peek.
		('.[*#:' includes: c) 
			ifTrue: 
			[
				sel isNil 
					ifTrue: [sel := (CSSUniversalSelector readFrom: in)]
					ifFalse: 
					[
						sel isRelationshipSelector ifFalse:
						[
							sel := (CSSRelationshipSelector selectorForOperator: lastOperator) 
								addSelector: sel.
							sel addSelector: (CSSUniversalSelector readFrom: in)
						]
						ifTrue:
						[ 
							lastOperator = sel operator ifFalse:
							[
								| last comb | 		
								last := sel removeLastSelector.
								comb := CSSRelationshipSelector selectorForOperator: lastOperator.
								comb addSelector: last.
								sel selectors isEmpty 
									ifFalse: [sel addSelector: comb] 
									ifTrue: [sel := comb]. 
								comb addSelector: (self oneSelectorFromString: in upToEnd).
							]
							ifTrue:
							[
								sel addSelector: (CSSUniversalSelector readFrom: in).
							]
						]
					]
			]
			ifFalse:
			[
				((operators includes:c) and:[sel notNil]) ifTrue: 
				[
					lastOperator := in next asString.
					sel isRelationshipSelector ifFalse:
					[
						sel := (CSSRelationshipSelector selectorForOperator: lastOperator)
							addSelector: sel.
					]
					ifTrue:
					[
						sel operator = lastOperator ifFalse:
						[
							| last comb | 		
							last := sel removeLastSelector.
							comb := CSSRelationshipSelector selectorForOperator: lastOperator.
							comb addSelector: last.
							sel selectors isEmpty 
								ifFalse: [sel addSelector: comb] 
								ifTrue: [sel := comb]. 
							in atEnd ifFalse: 
								[comb addSelector: (self oneSelectorFromString: in upToEnd)].
						]
					]
				]
				ifFalse:
				[
					c isLetter ifTrue:
					[
						sel isNil ifTrue: 
						[
							sel := (CSSTypeSelector readFrom: in).
						]
						ifFalse:
						[
							sel isRelationshipSelector ifFalse:
							[
								sel := (CSSRelationshipSelector selectorForOperator: lastOperator) 
									addSelector: sel.
								sel addSelector: (CSSTypeSelector readFrom: in)
							]
							ifTrue:
							[ 
								lastOperator = sel operator ifFalse:
								[
									| last comb | 		
									last := sel removeLastSelector.
									comb := CSSTypeSelector selectorForOperator: lastOperator.
									comb addSelector: last.
									sel selectors isEmpty 
										ifFalse: [sel addSelector: comb] 
										ifTrue: [sel := comb]. 
									comb addSelector: (self oneSelectorFromString: in upToEnd).
								]
								ifTrue:
								[
									sel addSelector: (CSSTypeSelector readFrom: in).
								]
							]
						]
					]
					ifFalse: 
					[
						(c = $/) ifTrue:
						[
							in next. 
							in peek = $* ifTrue:
							[
								in back.
								CSSComment new parseContents: in.
							]
							ifFalse:
							[
								in back.
							]
						]
					].
				] 
		].
	].
	^sel