action
submitAsync
	"collect inputs and instruct the browser to do a submission"
	| inputValues |
	inputValues := Dictionary new.
	inputs do: [ :input |
		input active ifTrue: [
			inputValues at: input name ifAbsentPut: input value ] ].
	^ self browser submitFormWithInputsAsync: inputValues url: form url
		method: form method encoding: form encoding