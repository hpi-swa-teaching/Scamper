testing
addValues: aCollection fromStream: in

	| pos val |
	pos := in position.
	val := self valueClass readFrom: in.
	^(val notNil and: [val isValid]) 
		ifTrue: [aCollection add: val. true] 
		ifFalse: [in position: pos. false]
	