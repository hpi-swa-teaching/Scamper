as yet unclassified
submitFormHtml

	^ '<!DOCTYPE HTML>
<html>
	<head>
        <meta charset="UTF-8">
        <meta name=viewport content="width=device-width, initial-scale=1">
		<title>submitFormTest - RequestPage</title>
	</head>
	<body>
		<form action="response">
			Text1: <input name="Text1" type="text" size="30" maxlength="30" value="aString"><br>
			Text2: <input name="Text2" type="text" size="30" maxlength="40" value="/aString/"><br>
			Text3: <textarea name="Text3" rows="10" cols="40">Scamper4ever!</textarea><br>
			<input type="submit" value=" Absenden ">
		</form>
	</body>
</html>'