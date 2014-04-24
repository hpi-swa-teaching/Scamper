formatting
addToFormatter: formatter
	| inputMorph |
	formatter currentFormData ifNil: [
		"not in a form.  It's bogus HTML but try to survive"
		^self ].

	formatter ensureNewlines: 1.
	inputMorph := PluggableTextMorph on: StringHolder new text: #contents accept: #acceptContents:.
	inputMorph extent: (self columns * 5) @ (self rows * inputMorph scrollDeltaHeight).
	inputMorph retractable: false.
	formatter addMorph: inputMorph.
	formatter currentFormData addInput: (TextInput name: self name  defaultValue:  self textualContents  textMorph: inputMorph).
	formatter ensureNewlines: 1.