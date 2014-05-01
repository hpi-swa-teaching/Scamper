window definition
workerCountEdit
	workerCountEdit := TextMorph new
		crAction: 
			[workerCountEdit contents string isAllDigits 
				ifTrue: [workerCountEdit acceptContents]
				ifFalse: 
					[workerCountEdit contents: self defaultWorkerCount asString.
					self resetWorkerCount]].
	self resetWorkerCount.
	^workerCountEdit
