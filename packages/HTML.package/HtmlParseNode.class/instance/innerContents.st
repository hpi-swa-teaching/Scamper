testing
innerContents

	| in | 

	^self children isEmpty 
		ifTrue: ['']
		ifFalse: 
		[
			in := ReadStream on: self content.
			in position: self children first start.
			in next: (self children last end - self children first start).
		]