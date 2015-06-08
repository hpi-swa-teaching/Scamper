as yet unclassified
setRequestCookiesDo: aBlock
	"evaluate aBlock witj all the cookies read from cookies.txt"

	|file line cookie|
	Transcript show: 'set cookie'.
	file := FileStream fileNamed: 'cookies.txt'.
	self headersAt: 'Cookie' do:[:hdr|.
		Transcript show: 'headersat loop'.
		[file atEnd] whileFalse:
		[line := file nextLine.
			Transcript show: line.
			cookie := WebCookie new readFrom: line asString readStream.
			Transcript show: cookie.
			aBlock value: cookie ]
	].