browser urls
error510Page
	"return a string of HTML about status 510"
	^ self errorPageTemplate format:{
	'Error 510' translated.
	'Not Extended.' translated.
	}