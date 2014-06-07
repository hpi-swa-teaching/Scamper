rendering
addToFormatter: aFormatter
	"Currently not supported:"
	"name := self attributes at: 'name' ifAbsent: [nil].
	name ifNotNil: [
			aFormatter noteAnchorStart: name ]."
	super addToFormatter: aFormatter