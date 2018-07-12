accessing
applyTextAlignFrom: aResolver

	
	aResolver ifStyleNotNil: #textAlign do: [ :align | self textAlign: align ].