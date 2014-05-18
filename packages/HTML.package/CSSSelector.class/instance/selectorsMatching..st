testing
selectorsMatching: aBlock

	^(aBlock value: self) ifTrue: [Array with: self] ifFalse: [#()]