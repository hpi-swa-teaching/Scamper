browser urls
error412Page
	"return a string of HTML about status 412"
	^ self errorPageTemplate format:{
	'Error 412' translated.
	'An error occured: Precondition Failed.' translated.
	}