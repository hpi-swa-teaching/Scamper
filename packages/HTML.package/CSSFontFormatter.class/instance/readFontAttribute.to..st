parsing
readFontAttribute: aString to: aContext
	| values shorthandContext |
	shorthandContext := Dictionary newFrom: {
		#italic -> false.
		#bold -> false.
		#size -> self class defaultSize.
		#family -> self class defaultStyle.
	}.
	
	values := aString splitOn: ' '.
	values size >= 2 ifTrue: [
		self readFontSizeAttribute: (values nextToLast splitOn: '/') first to: shorthandContext].
	values size >= 3 ifTrue: [
		(self isValidStyleValue: values first) 
			ifTrue: [	self readFontStyleAttribute: values first to: shorthandContext.
					values size >= 4
						ifTrue: [self readFontWeightAttribute: values second to: shorthandContext ]]
			ifFalse: [ 
				(self isValidWeightValue: values first)
					ifTrue: [self readFontWeightAttribute: values first to: shorthandContext ]]].
	values last ifNotNilDo: [:val | self readFontFamilyAttribute: val to: shorthandContext].
	aContext addAll: shorthandContext