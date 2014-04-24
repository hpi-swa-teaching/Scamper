formatting
addToFormatter: formatter
	| options defaultOption listMorph names size valueHolder |
	formatter currentFormData ifNil: [
		"not in a form.  It's bogus HTML but try to survive"
		^self ].

	names := OrderedCollection new.
	options := OrderedCollection new.
	defaultOption := nil.

	(self getAttribute: 'multiple') ifNotNil: [
		self flag: #incomplete.
		formatter addString: '[M option list]'.
		^self ].

	contents do: [ :c |  c isOption ifTrue: [
		names add: c value.
		options add: c label withBlanksCondensed.
		(c getAttribute: 'selected') ifNotNil: [ defaultOption := c label ] ] ].

	contents isEmpty ifTrue: [ ^self ].

	defaultOption ifNil: [ defaultOption := options first ].

	size := (self getAttribute: 'size' default: '1') asNumber.
	valueHolder := ValueHolder new contents: (contents indexOf: defaultOption).
			listMorph := PluggableListMorph on: valueHolder list: nil
				selected: #contents  changeSelected: #contents:.
			listMorph extent: ((listMorph extent x) @ (listMorph scrollDeltaHeight * size)).

	formatter addMorph: listMorph.

	formatter currentFormData addInput:
		(SelectionInput  name: self name  defaultValue: defaultOption
			list: listMorph  values: names asArray)