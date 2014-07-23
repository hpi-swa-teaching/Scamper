parsing
styleForFamily: aString
	| family |
	family := aString trimBoth: [:char | char isSeparator or: [char = $"] or: [char = $']].
	(TextStyle named: family) ifNotNilDo: [:style | ^style].
	self fontMap at: family ifPresent: [:replacement | ^TextStyle named: replacement].
	^nil