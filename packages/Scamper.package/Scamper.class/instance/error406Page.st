browser urls
error406Page
	"return a string of HTML about status 406"
	^ self errorPageTemplate format:{
	'Error 406' translated.
	'An error occured: Not Acceptable.' translated.
	}