parsing
parseTextAttributesFrom: aCSSProperty into: aContext

	(aCSSProperty propertyName = 'height' and: [ self isNumber: aCSSProperty propertyString ])
		ifTrue: [ aContext at: #height put: aCSSProperty propertyString asInteger ].
	aCSSProperty propertyName = 'width'
		ifTrue: [
			aContext at: #absoluteWidth put: nil.
			aContext at: #relativeWidth put: nil.
			
			aCSSProperty propertyString = 'auto' ifTrue: [
				aContext at: #absoluteWidth put: #auto.
				^ self].
			
			self isRelativeSize: aCSSProperty propertyString ifTrue: [
				"hope it's percent"
				aContext at: #relativeWidth put: aCSSProperty propertyString asInteger.
				^ self].
			self isAbsoluteSize: aCSSProperty propertyString 
				ifTrue: [ aContext at: #absoluteWidth put: 
					(self absoluteSizeToPx: aCSSProperty propertyString defaultSize: 0) ] ]