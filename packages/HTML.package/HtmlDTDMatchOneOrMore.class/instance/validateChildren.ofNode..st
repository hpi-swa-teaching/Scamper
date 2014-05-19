as yet unclassified
validateChildren: aStream ofNode: aNode

	| matchedOne |
	matchedOne := false.
	[expression validateChildren: aStream ofNode: aNode] whileTrue:[matchedOne := true].
	^matchedOne