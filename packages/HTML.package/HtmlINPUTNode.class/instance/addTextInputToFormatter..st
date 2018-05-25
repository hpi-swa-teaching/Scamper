rendering
addTextInputToFormatter: formatter
	"is it a submit button?"
	| inputMorph size |
	inputMorph := PluggableTextMorphSubmitOnEnter on: StringHolder new text: #contents accept: #acceptContents: acceptTarget: self associatedForm acceptAction: #submitAsync.
	self type = 'password'
		ifTrue: [inputMorph font: (StrikeFont passwordFontSize: 12)].
	size := (self attributes at: 'size' ifAbsent: ['12']) asNumber.
	inputMorph extent: (size*10@20).
	formatter addMorph: inputMorph.
	self associatedForm addInput:
		(TextInput name: self name defaultValue: self defaultValue  textMorph: inputMorph).