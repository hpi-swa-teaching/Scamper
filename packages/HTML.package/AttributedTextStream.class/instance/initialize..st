initialize-release
initialize: n

	super initialize.
	characters := (String new: n) writeStream.
	currentAttributes := #().
	currentRun := 0.
	attributeValues := (Array new: (n min: 10)) writeStream.
	attributeRuns := (Array new: (n min: 10)) writeStream