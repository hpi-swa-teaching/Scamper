testing
mayContain: anEntity 
	(self attributes includesKey: 'href') ifFalse: [
		"if we have no href, then we can contain nothing"
		^false ].

	^ anEntity isTextualEntity