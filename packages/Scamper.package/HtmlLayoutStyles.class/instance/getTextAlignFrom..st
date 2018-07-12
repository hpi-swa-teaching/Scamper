getting styles
getTextAlignFrom: aResolver

	
	aResolver ifStyleNotNil: #textAlign do: [ :align | self textAlign: align ].