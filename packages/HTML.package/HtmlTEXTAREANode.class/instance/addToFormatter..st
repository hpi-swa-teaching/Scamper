accessing
addToFormatter: formatter
	| inputMorph |
	self associatedForm ifNil: [
		"not in a form.  It's bogus HTML but try to survive"
		^self ].

	formatter ensureNewlines: 1.
	inputMorph := PluggableTextMorph on: StringHolder new text: #contents accept: #acceptContents:.
	inputMorph extent: (self columns * 5) @ (self rows * inputMorph scrollDeltaHeight).
	inputMorph retractable: false.
	formatter addMorph: inputMorph.
	self associatedForm addInput: (TextInput name: self name  defaultValue:  self innerContents  textMorph: inputMorph).
	formatter ensureNewlines: 1.