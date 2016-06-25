browser urls
bookmarksHTML
	"return a string of HTML which introduces Scamper"
	
	| bookmarkList |
	bookmarkList := ''.
	self bookmarks keysAndValuesDo: [ :aKey : aValue | bookmarkList := bookmarkList, '<li><a href="', aValue asString, '">', aKey asString,'</a></li>' ].
	^'
<html>
<head>
<title>{1}</title>
</head>
<body>
<h1>{2}</h1>
<ul>', bookmarkList, 
'</ul>
</body>
</html>' format:{
	'Bookmarks' translated.
	'Bookmarks' translated.
	}