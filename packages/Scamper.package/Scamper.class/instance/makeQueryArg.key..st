browser urls
makeQueryArg: aString key: keyString

	| query inputs |
	query := (keyString , '=').
	inputs := aString withBlanksTrimmed.
	1 to: inputs size do: [:i |
		((inputs at: i) = Character space)
			ifTrue: [
				query := query , '+'] 
			ifFalse: [
				query := query , (inputs at: i)]].
	^query