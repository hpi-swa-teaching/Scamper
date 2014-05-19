printing
definitionString

	| out |
	out := WriteStream on: String new.
	self printDefinitionOn: out.
	^out contents.