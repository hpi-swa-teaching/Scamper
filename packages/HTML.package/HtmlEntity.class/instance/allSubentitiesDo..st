enumeration
allSubentitiesDo: aBlock
	"perform the block recursively on all sub-entities"
	contents do: [ :e | 
		aBlock value: e .
		e allSubentitiesDo: aBlock.
	].
	