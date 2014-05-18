initialization
initialize	
	characters := WriteStream on: String new.	
	currentAttributes := OrderedCollection new.	
	currentRun := 0.	
	attributeValues := WriteStream on: (Array new: 50).	
	attributeRuns := WriteStream on: (Array new: 50).	