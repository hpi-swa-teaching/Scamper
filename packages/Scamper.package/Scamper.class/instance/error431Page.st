browser urls
error431Page
	"return a string of HTML about status 431"
	^ self errorPageTemplate format:{
	'Error 431' translated.
	'An error occured: Request Header Fields Too Large.' translated.
	}