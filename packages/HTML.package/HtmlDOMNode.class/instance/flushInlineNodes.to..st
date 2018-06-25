rendering
flushInlineNodes: inlineNodes to: aHtmlBlockMorph
	| formatter htmlInlineMorph resolver |
	inlineNodes ifNotEmpty: [
		formatter := HtmlFormatter preferredFormatterClass new.
		inlineNodes do: [ :node | node addToFormatter: formatter ].
		htmlInlineMorph := formatter htmlInlineMorph.
		htmlInlineMorph text ifNotEmpty: [
			htmlInlineMorph nodes: inlineNodes copy.
			aHtmlBlockMorph addChild: htmlInlineMorph ].
		inlineNodes removeAll.
		resolver := CSSStyleResolver for: (aHtmlBlockMorph node).
		resolver ifStyleNotNil: #align do: [ :align | htmlInlineMorph layoutPolicy textAlign: align ].
		resolver ifStyleNotNil: #float do: [ :float |
			(float = 'left') ifTrue: [ htmlInlineMorph layoutPolicy float: #left ].
			(float = 'right') ifTrue: [ htmlInlineMorph layoutPolicy float: #right ].
			] ].
		