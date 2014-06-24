rendering
addToHtmlMorph: aHtmlBlockMorph	
	super addToHtmlMorph: aHtmlBlockMorph.
	((self attributes at: #border ifAbsent: ['1']) = '0') ifFalse: [htmlMorph addTableLines].