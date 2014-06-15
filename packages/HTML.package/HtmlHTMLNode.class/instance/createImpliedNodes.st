parsing
createImpliedNodes

	| dtags |
	dtags := self childDTDTags.
	((dtags includes: 'HEAD') and: [dtags includes: 'BODY'])
	ifFalse: "one or both is missing"
	[
		(dtags includes: 'HEAD') ifTrue: "everything after head goes in body"
		[
			| head bodyParts |
			head := self children detect:[:ea | ea tag = 'head'].
			bodyParts := self children copyAfter: head.
			self children: (self children copyWithoutAll: bodyParts).
			self addChild: (HtmlBODYNode new children: bodyParts; 
				start: head end; 
				end: self end; 
				isImplied: true).
		]
		ifFalse: "No head - is there a body?"
		[
			(dtags includes: 'BODY') ifTrue:
			[
				| headParts body |
				body := self children detect:[:ea | ea tag = 'body'].
				headParts := self children copyUpTo: body.
				self children: (self children copyWithoutAll: headParts). 
				self children:
					(self children copyWithFirst:
						(HtmlHEADNode new children: headParts;
							start: self start;
							end: body start;
							isImplied: true)).
			]
			ifFalse: "Neither are found"
			[
				| kids |
				kids := self children.
				self children: #().
				self addChild: (HtmlHEADNode new 
							start: self start;
							end: self start;
							isImplied: true).
				self addChild: (HtmlBODYNode new children: kids; 
				start: self start; 
				end: self end; 
				isImplied: true).
			]
		]
	]