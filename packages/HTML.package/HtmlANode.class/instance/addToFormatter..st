as yet unclassified
addToFormatter: aFormatter
	| href name |
	
	name := self attributes at: 'name' ifAbsent: [nil].
	name ifNotNil: [
			aFormatter noteAnchorStart: name ].
		
	href := self attributes at: 'href' ifAbsent: [nil].
	
	href isNil
		ifTrue: [super addToFormatter: aFormatter]
		ifFalse: [
			aFormatter startLink: href.
			super addToFormatter: aFormatter.
			aFormatter endLink: href.]