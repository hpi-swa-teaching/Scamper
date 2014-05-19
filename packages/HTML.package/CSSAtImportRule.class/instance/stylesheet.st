accessing
stylesheet
	"Answer the value of styleSheet"

	stylesheet isNil ifTrue: [ stylesheet := CSSStyleSheet fromUrl: urlValue value parent: self].
	^stylesheet