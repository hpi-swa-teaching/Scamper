browser urls
error405Page
	"return a string of HTML about status 405"
	^ self errorPageTemplate format:{
	'Error 405' translated.
	'An error occured: Method Not Allowed.' translated.
	}