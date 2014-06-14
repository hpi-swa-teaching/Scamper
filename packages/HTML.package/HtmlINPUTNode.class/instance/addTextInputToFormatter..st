rendering
addTextInputToFormatter: formatter
	"is it a submit button?"
	| inputMorph size |
	inputMorph := PluggableTextMorph on: StringHolder new text: #contents accept: #acceptContents:.
	self type = 'password'
		ifTrue: [inputMorph font: (StrikeFont passwordFontSize: 12)].
	size := (self attributes at: 'size' ifAbsent: ['12']) asNumber.
	inputMorph extent: (size*10@20).
	formatter addMorph: inputMorph.
	self associatedForm addInput:
		(TextInput name: self name defaultValue: self defaultValue  textMorph: inputMorph).