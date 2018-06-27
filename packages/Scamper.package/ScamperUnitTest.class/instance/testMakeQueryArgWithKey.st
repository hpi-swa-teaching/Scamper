as yet unclassified
testMakeQueryArgWithKey

	| in1 in2 in3 |
	scamper := Scamper new.
	in1 := 'hpi gutes institut'.
	in2 := '  hpi   '.
	in3 := 'hpigutesinstitut'.
	
	self assert: 'q=hpi+gutes+institut' equals: (scamper makeQueryArg: in1 key: 'q').
	self assert: 'q=hpi' equals: (scamper makeQueryArg: in2 key: 'q').
	self assert: 'q=hpigutesinstitut' equals: (scamper makeQueryArg: in3 key: 'q').
	 