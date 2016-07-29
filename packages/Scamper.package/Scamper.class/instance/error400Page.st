browser urls
error400Page
	"return a string of HTML about status 400"
	^ self errorPageTemplate format:{
	'Error 400' translated.
	'An error occured: Bad Request	.' translated.
	}