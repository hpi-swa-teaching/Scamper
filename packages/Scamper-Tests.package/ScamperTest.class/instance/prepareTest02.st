initialize-release
prepareTest02
	"Prepare the test by deleting the old test directory and save the new file. This ensures that the newest version is available."
	| file |
	[FileDirectory default deleteDirectory: 'Scamper-Tests'.
	FileDirectory default createDirectory: 'Scamper-Tests'.] on: Error do: [].
	[file := FileStream fileNamed:
		(FileDirectory uri: 'Scamper-Tests', FileDirectory pathNameDelimiter, 			'test02submitFormPage.html') fullName.
		file ifNil: [self error: 'could not save file' translated].
		file nextPutAll: 
'<html>
	<head>
		<title>submitFormTest</title>
	</head>
	<body>
		<form action="http://de.selfhtml.org/cgi-bin/comments.pl">
			Text1: <input name="Text1" type="text" size="30" 
					maxlength="30" value="aString"><br>
			Text2: <input name="Text2" type="text" size="30" 
					maxlength="40" value="/aString/"><br>
			Text3: <textarea name="Text3" rows="10" 
					cols="50">Hasso-Plattner-Institut</textarea><br>
			<input type="submit" value=" Absenden ">
		</form>
	</body>
</html>' asString.
	] ensure: [file close].