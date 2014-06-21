drawing
clip: anImage withOrigin: aPoint
	| width height targetRect origin |
	aPoint ifNil: [ origin := 0@0 ] ifNotNil: [ :value | origin := (0@0) - value ].
	width := (self width > anImage width) ifTrue: [ anImage width ] ifFalse: [ self width ].
	height := (self height > anImage height) ifTrue: [ anImage height ] ifFalse: [ self height ].
	targetRect := Rectangle origin: origin extent: ((width @ height) max: 0@0).
	
	^ anImage contentsOfArea: targetRect