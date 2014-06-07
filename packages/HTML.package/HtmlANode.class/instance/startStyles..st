as yet unclassified
startStyles: aFormatter

	href := self attributes at: 'href' ifAbsent: [nil].	
	href ifNotNil: [:value | aFormatter startLink: value ]