accessing
currentAttributes: newAttributes
	"set the current attributes"	
	(currentRun > 0 and:[currentAttributes ~= newAttributes]) ifTrue:[		
		attributeRuns nextPut: currentRun.	
		attributeValues nextPut: currentAttributes.
		currentRun := 0.	].	
	currentAttributes := newAttributes.