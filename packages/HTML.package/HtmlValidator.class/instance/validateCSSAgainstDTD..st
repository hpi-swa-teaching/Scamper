actions
validateCSSAgainstDTD: dtd

	| rules  color backgroundColor |

	rules := dom allStyles.
	rules do:
	[:ea |
		ea selector isValid ifFalse: [ea addError: CSSSelectorNotValidError new]
		ifTrue:
		[
			ea selector isCSS3 ifTrue: [ea addError: CSSVersion3ConstructFoundError new].
			ea selector typeSelectors do:
			[:sel |
				sel element = sel element asLowercase ifFalse:
				[
					ea addError: (CSSSelectorElementNotLowercaseError new element: sel element).
				].
				(dtd tagIsReal: (dtd isXML 
					ifTrue: [sel element asLowercase] 
					ifFalse:[sel element asUppercase])) 
				ifFalse:
				[
					ea addError: (CSSSelectorElementNotValidError new element: sel element)
				]
			].
			(ea matchCount = 0 and: [ea selector isValid]) ifTrue:
			[
				ea addError: CSSUnmatchedRuleError new.		
			].
			ea properties do:
			[:prop |
				| lcname |
				lcname := prop propertyName asLowercase.
				prop propertyName = lcname ifFalse: 
				[
					ea addError:
					(CSSPropertyNameNotLowercaseError new propertyName: prop propertyName).
					prop propertyName: lcname.
				].
 
				prop definition isNil ifTrue:
				[
					ea addError: 
					(CSSPropertyUnknownError new propertyName: prop propertyName)
				]
				ifFalse:
				[
					prop valueIsValid ifFalse:
					[
						ea addError: 
						(CSSPropertyValueNotValidError new propertyName: prop propertyName)					
					]
				]
			].

			color := backgroundColor := nil.

			ea properties do:
			[:prop |
				prop propertyName = 'color' ifTrue: [ color:= prop].
				prop propertyName = 'background-color' ifTrue: [backgroundColor := prop].

			].

			color = backgroundColor ifFalse:
			[
				color isNil ifTrue: 
				[
					ea addError: 
					(CSSColorAndBackgroundColorNotSet new propertyName: 'color')
				]
				ifFalse:
				[
					backgroundColor isNil ifTrue:
					[
						ea addError: 
					(CSSColorAndBackgroundColorNotSet new propertyName: 'background-color')
					]
				]
			]
		]
	]
	