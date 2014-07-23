matching
validateChildren: aStream ofNode: aNode

	expression do:
	[:ea | 
		
		(ea validateChildren: aStream ofNode: aNode) ifFalse: [^false]
	].
	^true