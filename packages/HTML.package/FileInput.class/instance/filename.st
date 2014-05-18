accessing
filename
	textMorph hasUnacceptedEdits ifTrue: [ textMorph accept ].
	^textMorph getText asString withInternetLineEndings