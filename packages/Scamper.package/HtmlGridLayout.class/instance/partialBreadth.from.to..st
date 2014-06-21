initialize-release
partialBreadth: aGridSpaceCollection from: start to: end
	^ ((aGridSpaceCollection copyFrom: start to: end) collect: [:ea | ea breadth]) sum