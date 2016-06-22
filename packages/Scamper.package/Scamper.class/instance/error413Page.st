browser urls
error413Page
	"return a string of HTML about status 413"
	^ self errorPageTemplate format:{
	'Error 413' translated.
	'An error occured: Request Entity Too Large.' translated.
	}