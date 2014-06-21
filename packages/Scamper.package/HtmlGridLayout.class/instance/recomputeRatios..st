layout
recomputeRatios: aGridSpaceCollection
	"recompute ratios based on initial breadth"
	| pos totalBreadth |
	totalBreadth := self totalBreadth: aGridSpaceCollection.
	pos := 0.
	aGridSpaceCollection do: [ :ea | 
		ea start: (pos = 0 ifTrue: [ 0 ] ifFalse: [ 1 / (totalBreadth / pos) ]).
		ea ratio: (1 / (totalBreadth / ea breadth)).
		pos := pos + ea breadth.
	].
	^ pos
