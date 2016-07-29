browser urls
error500Page
	"return a string of HTML about status 500"
	^ self errorPageTemplate format:{
	'Error 500' translated.
	'An error occured: Internal Server Error.' translated.
	}