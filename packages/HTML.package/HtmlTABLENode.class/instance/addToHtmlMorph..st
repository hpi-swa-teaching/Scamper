rendering
addToHtmlMorph: aHtmlBlockMorph	
	super addToHtmlMorph: aHtmlBlockMorph.
	((self attributes at: #border ifAbsent: ['0']) = '0') ifFalse: [htmlMorph addTableLines].