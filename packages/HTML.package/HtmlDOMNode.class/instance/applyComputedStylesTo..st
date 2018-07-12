rendering
applyComputedStylesTo: aHtmlBlockMorph

	| resolver |
	
	resolver := CSSStyleResolver for: self.
	aHtmlBlockMorph layoutStyles applyPaddingFrom: resolver.
	aHtmlBlockMorph layoutStyles applyMarginFrom: resolver.
	aHtmlBlockMorph layoutStyles applyBorderWidthFrom: resolver.
	resolver ifStyleNotNil: #align do: [ :align | aHtmlBlockMorph layoutPolicy textAlign: align ].
	
		
	"resolver ifStyleNotNil: #float do: [ :float |
			(float = 'left') ifTrue: [ aHtmlBlockMorph layoutPolicy float: #left ].
			(float = 'right') ifTrue: [ aHtmlBlockMorph layoutPolicy float: #right ].
			]."