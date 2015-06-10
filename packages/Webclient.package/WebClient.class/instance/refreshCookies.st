cookies
refreshCookies
	"store received cookies in cookies.txt"

	|file line cookie|

	"read cookies and check if they are expired"
	file := FileStream fileNamed: 'cookies.txt'. 	
	[file atEnd] whileFalse:
	[line := file nextLine.
	cookie := WebCookie new readFrom: line asString readStream.
	(cookie expiry notNil and: [cookie expiry > DateAndTime now])  ifTrue:[
			cookies add: cookie.
	]].	
	
	"remove duplicates"
	cookies do: [:aCookie |
		cookies := cookies reject:[:any| any = aCookie].
		cookies add: aCookie].

	"save cookies"
	file := (FileDirectory uri: '') forceNewFileNamed: 'cookies.txt'.
	cookies do: [:c | file nextPutAll: c asString; cr].
	file close.
	^ self