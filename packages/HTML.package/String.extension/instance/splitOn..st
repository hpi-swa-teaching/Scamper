*html
splitOn: aString

	| idx lastIdx |
	idx := lastIdx := 1.

	^Array streamContents: 
	[:s |
		[idx <= self size] whileTrue:
		[
			idx := self findString: aString startingAt: lastIdx.
			idx = 0 ifTrue: [idx := self size + 1].
			s nextPut: (self copyFrom: lastIdx to: idx-1).
			lastIdx := idx + aString size.
		]
	]
