browser urls
bookmarksHTML
	"returns a string which lists user boomarks in html"
	
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