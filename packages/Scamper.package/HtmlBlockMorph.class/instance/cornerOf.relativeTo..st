layout
cornerOf: aRectangle relativeTo: aPoint
	| translation |
	translation := aPoint - aRectangle origin.
	^ aRectangle corner - translation