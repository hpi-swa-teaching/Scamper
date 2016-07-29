tabs
createTab
	"creates a pair that can be added to tabs collection"	
	
	| pair|
	Transcript show: self document.
	pair:= Array new: 2.
	pair at: 1 put: self document;
		at: 2 put: (self getTitle: self document).
	^pair
	