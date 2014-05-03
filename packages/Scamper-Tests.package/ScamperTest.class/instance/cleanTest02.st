initialize-release
cleanTest02
	[FileDirectory default deleteFileNamed: 'Scamper-Tests', 
		FileDirectory pathNameDelimiter, 'test02submitFormPage.html'.
	FileDirectory default deleteDirectory: 'Scamper-Tests'.] on: Error do: [].