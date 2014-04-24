private-tokenizing
nextText
	"returns the next textual segment"
	|start end|

	start := pos.
	end := (text indexOf: $< startingAt: start ifAbsent: [ text size + 1 ]) - 1.

	pos := end+1.
	^HtmlText forSource: (text copyFrom: start to: end)