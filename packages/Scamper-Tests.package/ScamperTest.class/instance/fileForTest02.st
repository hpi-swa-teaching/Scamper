initialize-release
fileForTest02
"The prepared file with values for testing the form submit."

	^ '<html>
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