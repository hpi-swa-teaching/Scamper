browser urls
error418Page
	"return a string of HTML about status 418"
	^ self errorPageTemplate format:{
	'Error 418' translated.
	'An error occured: Im a teapot.' translated.
	}