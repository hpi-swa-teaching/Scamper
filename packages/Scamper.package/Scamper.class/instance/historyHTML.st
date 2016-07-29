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
<h1>{1}</h1>
<table>
<tr>
<td>
<h3>{4}</h3>
<ul>', historyList, 
'</ul>
</td>
<td>
<h3>{2}</h3>
<a href="browser:deleteHistory">{3}<a/>
</td>
</tr>
</table>
</body>
</html>' format:{
	'History' translated.
	'Options' translated.
	'Delete History' translated.
	'Recently visited pages' translated.
	}