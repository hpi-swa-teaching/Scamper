initialize-release
prepareTest02
	"Prepare the test by deleting the old test directory and save the new file. This ensures that the newest version is available."
	| file |
	[FileDirectory default deleteDirectory: 'Scamper-Tests'.] on: Error do: [].
	[FileDirectory default createDirectory: 'Scamper-Tests'.] on: Error do: [].
	[file := FileStream fileNamed:
		(FileDirectory uri: 'Scamper-Tests', FileDirectory pathNameDelimiter, 			'test02submitFormPage.html') fullName.
		file ifNil: [self error: 'could not save file' translated].
		file nextPutAll: self fileForTest02.
	] ensure: [file close].
	^file.