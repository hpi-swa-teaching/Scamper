iterating
nodesSelect: aBlock

	| col |

	col := OrderedCollection new.
	self nodesDo:[:ea | (aBlock value: ea) ifTrue: [col add: ea]].
	^col asArray