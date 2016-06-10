tabs
createTab
	"creates a pair that can be added to tabs collection"	
	
	| pair|
	pair:= Array new: 2.
	pair at: 1 put: document;
		at: 2 put: (self getTitle: document).
	
	^pair
	