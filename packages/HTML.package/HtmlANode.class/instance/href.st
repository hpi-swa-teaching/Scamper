accessing
href
	^ href ifNil: [ href := self attributes at: 'href' ifAbsent: [nil] ]