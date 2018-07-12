formatting commands
parseTextStyleAttributesFor: aStyleResolver in: anOrderedCollection
	
	| family size |
	size := aStyleResolver ifStyleNotNil: #fontSize do: [:s | s]
				ifNil: [CSSFontFormatter defaultSize].
	family := aStyleResolver ifStyleNotNil: #fontFamily do: [:f | f]
				ifNil: [CSSFontFormatter defaultStyle].

	((aStyleResolver getStyle: #fontFamily) notNil or: [(aStyleResolver getStyle: #fontSize) notNil])
			ifTrue: [anOrderedCollection add:
					(TextFontReference toFont: (self fontWith: family and: size))].