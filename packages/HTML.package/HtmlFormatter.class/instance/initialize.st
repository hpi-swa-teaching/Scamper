private-initialization
initialize
	outputStream := AttributedTextStream new.
	preformattedLevel := 0.
	indentLevel := boldLevel := italicsLevel := underlineLevel := strikeLevel := centerLevel := 0.
	listLengths := OrderedCollection new.
	listTypes := OrderedCollection new.
	formDatas := OrderedCollection new.
	precedingSpaces := 0.
	precedingNewlines := 1000.   "more than will ever be asked for"
	morphsToEmbed := OrderedCollection new.
	incompleteMorphs := OrderedCollection new.
	anchorLocations := Dictionary new.
	imageMaps := OrderedCollection new.