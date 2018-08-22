rendering
applyComputedStylesTo: aHtmlMorph

	| resolver |
	"can currently also be HtmlInlineMorph. HtmlInlineMorph should be refactored to also be HtmlMorph"
	resolver := CSSStyleResolver for: self.
	aHtmlMorph layoutStyles getComputedStylesFrom: resolver.
	aHtmlMorph layoutStyles apply.
	

	
	
	
	
		
	"resolver ifStyleNotNil: #float do: [ :float |
			(float = 'left') ifTrue: [ aHtmlBlockMorph layoutPolicy float: #left ].
			(float = 'right') ifTrue: [ aHtmlBlockMorph layoutPolicy float: #right ].
			]."