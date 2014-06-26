parsing
readFontFamilyAttribute: aString to: aContext
	| style |
	style := self class defaultStyle.
	(aString splitBy: ',') reversed
		do: [:family | (self styleForFamily: family) ifNotNilDo: [:s | style := s]].
	aContext at: #family put: style.