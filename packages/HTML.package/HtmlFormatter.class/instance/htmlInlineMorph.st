formatting
htmlInlineMorph
	| text htmlInlineMorph |
	text := outputStream contents.
	htmlInlineMorph := HtmlInlineMorph new contents: text.
	morphsToEmbed do:[ :m | htmlInlineMorph addMorph: m ].
	htmlInlineMorph incompleteMorphs: self incompleteMorphs.
	^htmlInlineMorph