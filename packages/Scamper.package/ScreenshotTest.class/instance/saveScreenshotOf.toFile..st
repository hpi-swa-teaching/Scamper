testing
saveScreenshotOf: aWindow toFile: aFilename

	FileDirectory default deleteFileNamed: aFilename.
	PNGReadWriter putForm: aWindow imageForm
					onFileNamed: (FileDirectory default fullPathFor: aFilename).