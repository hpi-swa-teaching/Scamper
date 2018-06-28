rendering
applyComputedStylesTo: aHtmlBlockMorph

	| resolver |
	resolver := CSSStyleResolver for: self.
	aHtmlBlockMorph layoutStyles applyPaddingFrom: resolver.
	
	resolver ifStyleNotNil: #float do: [ :float |
			(float = 'left') ifTrue: [ aHtmlBlockMorph layoutPolicy float: #left ].
			(float = 'right') ifTrue: [ aHtmlBlockMorph layoutPolicy float: #right ].
			].
	resolver ifStyleNotNil: #align do: [ :align | aHtmlBlockMorph layoutPolicy textAlign: align ].