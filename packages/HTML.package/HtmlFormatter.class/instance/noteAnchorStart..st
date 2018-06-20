formatting commands
noteAnchorStart: anchorName
	"note that an anchor starts at this point in the output"
	anchorLocations at: anchorName asLowercase put: outputStream size