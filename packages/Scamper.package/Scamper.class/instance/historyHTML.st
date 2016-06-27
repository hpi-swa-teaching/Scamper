browser urls
historyHTML
	"returns a string which shows th users browser history in html"
	
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