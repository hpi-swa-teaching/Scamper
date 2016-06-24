browser urls
historyHTML
	"return a string of HTML which introduces Scamper"
	
	| historyList |
	historyList := ''.
	self recentDocuments reverseDo: [ :doc | historyList := historyList, '<li><a href="', doc url asString, '">', doc url asString,'</a></li>' ].
	^'
<html>
<head>
<title>{1}</title>
</head>
<body>
<h1>{2}</h1>
<ul>', historyList, 
'</ul>
</body>
</html>' format:{
	'History' translated.
	'History' translated.
	}