parsing
readFourAttributesFrom: aPropertyValue to: aContext

		(aPropertyValue splitOn: ' ') doWithIndex: [:each :index |
			(index = 1) 
				ifTrue: [ self put: each at: 'top' to: aContext ].
			(index = 2) 
				ifTrue: [ self put: each at: 'right' to: aContext ].
			(index = 3) 
				ifTrue: [ self put: each at: 'bottom' to: aContext ].
			(index = 4) 
				ifTrue: [ self put: each at: 'left' to: aContext ]
		]