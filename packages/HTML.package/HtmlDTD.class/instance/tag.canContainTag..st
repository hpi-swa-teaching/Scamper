testing
tag: aTag canContainTag: anotherTag

	| element |
		element := self elementForTag: aTag asUppercase.
		^element notNil 
			ifTrue: [element allowsTag: anotherTag asUppercase]
			ifFalse:[false]
		