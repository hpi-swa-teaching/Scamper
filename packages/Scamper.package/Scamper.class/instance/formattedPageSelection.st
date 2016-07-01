access
formattedPageSelection
	
	| currentAnchorLocation |
	currentAnchorLocation ifNil: [ ^0 to: -1 ].
	^ currentAnchorLocation to: currentAnchorLocation.