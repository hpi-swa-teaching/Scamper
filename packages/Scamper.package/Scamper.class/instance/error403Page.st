browser urls
error403Page
	"return a string of HTML about status 403"
	^ self errorPageTemplate format:{
	'Error 403' translated.
	'An error occured: Forbidden.' translated.
	}