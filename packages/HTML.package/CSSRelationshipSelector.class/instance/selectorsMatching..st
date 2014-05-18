accessing
selectorsMatching: aBlock

	| col |
	col := OrderedCollection new.

	(aBlock value: self) ifTrue: [col add: self].
	self selectors do: [:ea | col addAll: (ea selectorsMatching: aBlock)].
	^col asArray