cookies
addCookiesTo: aRequest host: aHost path: aPath

		|file line cookie|
		file := FileStream fileNamed: 'cookies.txt'. 	
		[file atEnd] whileFalse: [
			line := file nextLine.
			cookie := WebCookie new readFrom: line asString readStream. 
			(self acceptCookie: cookie host: aHost path: aPath) ifTrue: [
				aRequest addHeader: 'Cookie' value: cookie asString]].
		file close.
		^ self