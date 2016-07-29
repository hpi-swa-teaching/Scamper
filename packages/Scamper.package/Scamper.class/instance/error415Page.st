browser urls
error415Page
	"return a string of HTML about status 415"
	^ self errorPageTemplate format:{
	'Error 415' translated.
	'An error occured: Unsupported Media Type.' translated.
	}