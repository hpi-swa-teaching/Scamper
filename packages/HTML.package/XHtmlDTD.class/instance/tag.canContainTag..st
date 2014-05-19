private
tag: aTag canContainTag: anotherTag

	| element |
		element := self elementForTag: aTag asLowercase.
		^element notNil 
			ifTrue: [element allowsTag: anotherTag asLowercase]
			ifFalse:[false]
		