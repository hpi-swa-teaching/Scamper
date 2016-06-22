browser urls
error505Page
	"return a string of HTML about status 505"
	^ self errorPageTemplate format:{
	'Error 505' translated.
	'An error occured: HTTP Version not supported.' translated.
	}