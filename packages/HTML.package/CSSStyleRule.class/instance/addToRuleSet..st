accessing
addToRuleSet: aRuleSet

	| keys |

	keys := self selector keySelectors.

	keys do:
	[:k |
		k idSelector isNil ifFalse:
		[
			(aRuleSet idSelectors at: k idSelector value ifAbsentPut: [OrderedCollection new]) 
				add: self.			
		]
		ifTrue:
		[
			| classes |
			classes := k classSelectors.
			classes isEmpty ifFalse:
			[
				classes do:
				[:cls |
					(aRuleSet classSelectors at: cls value ifAbsentPut: [OrderedCollection new])
						add: self.
				]
			]
			ifTrue:
			[
				k element isNil ifFalse:
				[
					(aRuleSet tagSelectors at: k element asLowercase ifAbsentPut: [OrderedCollection new])
						add: self.
				]
				ifTrue:
				[
					self selector isValid ifTrue: [aRuleSet otherSelectors add: self].
				]
			]
		]
	].

	(keys isEmpty and: [self selector isValid]) ifTrue: 
	[
		aRuleSet otherSelectors add: self
	]