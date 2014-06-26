accessing
totalBreadth: aGridSpaceCollection
	^ (aGridSpaceCollection collect: [:ea | ea breadth]) sum