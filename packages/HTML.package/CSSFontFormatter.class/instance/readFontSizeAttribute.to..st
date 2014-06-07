parsing
readFontSizeAttribute: aString to: aContext
	"Lots of value types possible: http://www.w3schools.com/cssref/pr_font_font-size.asp"
	| defaultSize sizeFactors |
	defaultSize := TextStyle default defaultFontIndex.
	((aString endsWith: '%') or: (aString endsWith: 'em')) ifTrue: [
		| parentFontSize |
		parentFontSize := (parentResolver value: #size) ifNil: [ defaultSize ].
		aString asNumber ifNotNil: [:value |
			(aString endsWith: '%')
				ifTrue: [	aContext at: #size put: ((parentFontSize * (value / 100)) max: 1) asInteger ]
				ifFalse: [ aContext at: #size put: ((parentFontSize * value) max: 1) asInteger ]].
		^ self ].
	
	(aString endsWith: 'cm') ifTrue:
		[ aString asNumber ifNotNil: [:value | aContext at: #size put: (value * 4) asInteger].
		^ self].

	sizeFactors := Dictionary newFrom: {
		'initial' -> 1.
		'xx-small' -> 0.5.
		'x-small' -> 0.6.
		'small' -> 0.8.
		'medium' -> 1.
		'large' -> 1.5.
		'x-large' -> 2.
		'xx-large' -> 3.
	}.
	aContext at: #size put: ((sizeFactors at: aString ifAbsent: [1]) * defaultSize) asInteger