accessing
contents	
	| ans |	
	currentRun > 0 ifTrue:[		
		attributeValues nextPut: currentAttributes.		
		attributeRuns nextPut: currentRun.		
		currentRun := 0].	
	ans := Text string: characters contents  runs: 		
			(RunArray runs: 
				attributeRuns contents values: 
					attributeValues contents).	
	^ans