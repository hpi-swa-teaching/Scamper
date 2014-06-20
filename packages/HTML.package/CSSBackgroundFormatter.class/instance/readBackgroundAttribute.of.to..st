parsing
readBackgroundAttribute: propertyValue of: aCSSProperty to: aContext 
	| shorthandContext positionValues |
	shorthandContext := Dictionary newFrom: {
		#backgroundRepeat -> #repeat.
		#backgroundImage -> nil.
		#backgroundColor -> Color transparent.
		#backgroundPosition -> (0@0).
	}.
	positionValues := OrderedCollection new.
	
	(propertyValue splitOn: ' ') doWithIndex: [:each :index |
		(each beginsWith: 'url') 
			ifTrue: [ self readBackgroundImageAttribute: each of: aCSSProperty to: shorthandContext ]
			ifFalse: [
		(self isValidRepeatValue: each) 
			ifTrue: [ self readBackgroundRepeatAttribute: each to: shorthandContext ]
			ifFalse: [
		((positionValues size < 2) and: [ self isNumber: each ])
			ifTrue: [ positionValues add: each ]
			ifFalse: [
		(index = 1) 
			ifTrue: [self readBackgroundColorAttribute: each to: shorthandContext ]]]]].
	positionValues size = 2 ifTrue: [ self readBackgroundPositionAttribute: positionValues first, ' ', positionValues second to: shorthandContext ].
	
	aContext addAll: shorthandContext