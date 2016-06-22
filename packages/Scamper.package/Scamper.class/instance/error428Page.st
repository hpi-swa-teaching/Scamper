browser urls
error428Page
	"return a string of HTML about status 428"
	^self errorPageTemplate format:{
	'Error 428' translated.
	'An error occured: Precondition Required.' translated.
	}