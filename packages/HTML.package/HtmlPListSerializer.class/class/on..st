instance creation
on: aStream 
	"Answer an instance of me initialized on a stream."

	self initialize.
	^self basicNew on: aStream