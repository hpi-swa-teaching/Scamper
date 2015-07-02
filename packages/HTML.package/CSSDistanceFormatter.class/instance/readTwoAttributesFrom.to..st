parsing
readTwoAttributesFrom: aPropertyValue to: aContext

		(aPropertyValue splitOn: ' ') doWithIndex: [:each :index |
			(index = 1) 
				ifTrue: [ 
					self put: each at: 'top' to: aContext.
					self put: each at: 'bottom' to: aContext
				].
			(index = 2) 
				ifTrue: [ 
					self put: each at: 'right' to: aContext. 
					self put: each at: 'left' to: aContext
				]
		]