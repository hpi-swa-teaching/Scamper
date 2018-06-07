formatting
textMorph
	| text textMorph |
	text := outputStream contents.
	textMorph := TextMorph new contents: text.
	morphsToEmbed do:[ :m | textMorph addMorph: m ].
	^textMorph