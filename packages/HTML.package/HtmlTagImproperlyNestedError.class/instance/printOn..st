printing
printOn: aStream

	| rule |

	self parent tag printOn: aStream.
	aStream nextPutAll: ' found within tag: '.
	self parent parent tag printOn: aStream.

	rule := (self parent dtd elementForTag: self parent parent dtdTag).
	rule notNil ifTrue:
	[
		aStream nextPutAll: '. Tag Rule: '.
		rule contentRule printOn: aStream.
	]
	