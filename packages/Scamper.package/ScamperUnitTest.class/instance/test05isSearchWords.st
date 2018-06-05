as yet unclassified
test05isSearchWords

	| s1 s2 s3 s4 |
	scamper := Scamper new.
	
	s1 := 'hpi bestes informatikinstitut deutschlands' .
	s2 := 'www.hpi.de' .
	s3 := 'localhost:5050/index'.
	s4 := 'http://google.com/search'.

	self assert: (scamper isSearchWords:  s1);
		 assert: (scamper isSearchWords:  s2) not;
		 assert: (scamper isSearchWords:  s3) not;
		assert: (scamper isSearchWords:  s4) not.