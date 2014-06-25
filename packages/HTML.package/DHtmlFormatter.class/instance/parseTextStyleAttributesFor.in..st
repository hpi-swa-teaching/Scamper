formatting commands
parseTextStyleAttributesFor: aStyleResolver in: anOrderedCollection
	
	| family size |
	size := aStyleResolver ifStyleNotNil: #size do: [:s | s]
				ifNil: [CSSFontFormatter defaultSize].
	family := aStyleResolver ifStyleNotNil: #family do: [:f | f]
				ifNil: [CSSFontFormatter defaultStyle].

	((aStyleResolver getStyle: #family) notNil or: [(aStyleResolver getStyle: #size) notNil])
			ifTrue: [anOrderedCollection add:
					(TextFontReference toFont: (self fontWith: family and: size))].