rendering
applyComputedStylesTo: aHtmlBlockMorph

	| resolver |
	
	resolver := CSSStyleResolver for: self.
	aHtmlBlockMorph layoutStyles applyPaddingFrom: resolver.
	aHtmlBlockMorph layoutStyles applyMarginFrom: resolver.
	aHtmlBlockMorph layoutStyles applyBorderWidthFrom: resolver.
	aHtmlBlockMorph layoutStyles applyTextAlignFrom: resolver.
	
	
		
	"resolver ifStyleNotNil: #float do: [ :float |
			(float = 'left') ifTrue: [ aHtmlBlockMorph layoutPolicy float: #left ].
			(float = 'right') ifTrue: [ aHtmlBlockMorph layoutPolicy float: #right ].
			]."