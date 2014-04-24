accessing
nextPutAll: aString	
	"add an entire string with the same attributes"	
	currentRun := currentRun + aString size.	
	characters nextPutAll: aString.