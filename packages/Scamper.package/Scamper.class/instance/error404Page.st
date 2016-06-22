browser urls
error404Page
	"return a string of HTML about status 404"
	^ self errorPageTemplate format:{
	'Error 404' translated.
	'An error occured: The page was not found.' translated.
	}