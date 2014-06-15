parsing
readFontFamilyAttribute: aString to: aContext
	| style |
	style := ((TextStyle named: 'Verdana') ifNil: [TextStyle default]).
	aString splitBy: ',' reversed do: [:family | (self styleForFamily: family) ifNotNilDo: [:s | style := s]].
	aContext at: #family put: style.