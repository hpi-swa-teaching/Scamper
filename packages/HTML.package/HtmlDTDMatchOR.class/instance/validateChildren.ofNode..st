as yet unclassified
validateChildren: aStream ofNode: aNode

	| position matched |

	position := aStream position.

	matched := expression detect:
	[:ea | 
		aStream position: position.		
		(ea validateChildren: aStream ofNode: aNode)
	] ifNone: [nil].
	^matched notNil