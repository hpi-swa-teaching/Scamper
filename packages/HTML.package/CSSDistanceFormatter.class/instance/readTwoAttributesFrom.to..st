parsing
readTwoAttributesFrom: aPropertyValue to: aContext

		(aPropertyValue splitOn: ' ') doWithIndex: [:each :index |
			(index = 1) 
				ifTrue: [ 
					self put: each at: 'top', self class attributeSuffix to: aContext.
					self put: each at: 'bottom', self class attributeSuffix to: aContext
				].
			(index = 2) 
				ifTrue: [ 
					self put: each at: 'right', self class attributeSuffix to: aContext. 
					self put: each at: 'left', self class attributeSuffix to: aContext
				]
		]