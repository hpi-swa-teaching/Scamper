formatting commands
parseTextStyleAttributesFor: aStyleResolver in: anOrderedCollection
	
	| family size |
	
	size := aStyleResolver ifStyleNotNil: #size do: [:s | s] ifNil: [12].
	family := aStyleResolver ifStyleNotNil: #family do: [:f | f] ifNil: [TextStyle default].
	
	((aStyleResolver getStyle: #family) notNil or: [(aStyleResolver getStyle: #size) notNil])
			ifTrue: [anOrderedCollection add: (TextFontReference toFont: (family fontOfPointSize: size))].