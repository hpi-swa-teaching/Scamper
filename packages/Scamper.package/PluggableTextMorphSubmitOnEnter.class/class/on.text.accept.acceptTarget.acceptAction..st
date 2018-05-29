as yet unclassified
on: stringModel text: getTextSel accept: setTextSel acceptTarget: acceptObject acceptAction: aSymbol

	| plugTextMorph |
	plugTextMorph := self on: stringModel text: getTextSel accept: setTextSel.
	plugTextMorph acceptTarget: acceptObject.
	plugTextMorph acceptAction: aSymbol.
	^plugTextMorph
	
	