action
submit
	"collect inputs and instruct the browser to do a submission"
	| inputValues |
	inputValues := Dictionary new.

	inputs do: [ :input |
		input active ifTrue: [
			(inputValues includesKey: input name) ifFalse: [
				inputValues at: input name  put: (OrderedCollection new: 1) ].
			(inputValues at: input name)  add: input value ] ].
	browser submitFormWithInputs: inputValues url: form url
		method: form method encoding: form encoding.
	^true