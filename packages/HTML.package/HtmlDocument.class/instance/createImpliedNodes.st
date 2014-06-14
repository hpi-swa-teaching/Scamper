parsing
createImpliedNodes

	(self children detect: [:ea | ea tag = 'html'] ifNone:[nil]) ifNil: 
	[self children: 
		(Array with: 
			(HtmlHTMLNode new children: self children; 
				start: self start; 
				end: self end; 
				isImplied: true))
	].
	super createImpliedNodes.