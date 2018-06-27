rendering
getHtmlBlockMorph

	| resolver |
	resolver := CSSStyleResolver for: self.
	htmlMorph := self defaultBlockMorph newFor: self.
	resolver ifStyleNotNil: #float do: [ :float |
			(float = 'left') ifTrue: [ htmlMorph layoutPolicy float: #left ].
			(float = 'right') ifTrue: [ htmlMorph layoutPolicy float: #right ].
			].
	self renderChildrenInto: htmlMorph.
	^ htmlMorph