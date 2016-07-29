browser urls
error417Page
	"return a string of HTML about status 417"
	^ self errorPageTemplate format:{
	'Error 417' translated.
	'An error occured: Expectation Failed.' translated.
	}