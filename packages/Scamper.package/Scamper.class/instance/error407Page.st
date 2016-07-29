browser urls
error407Page
	"return a string of HTML about status 407"
	^self errorPageTemplate format:{
	'Error 407' translated.
	'An error occured: Proxy Authentication Required.' translated.
	}