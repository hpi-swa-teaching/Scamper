browser urls
error408Page
	"return a string of HTML about status 408"
	^ self errorPageTemplate format:{
	'Error 408' translated.
	'An error occured: Request Time-out.' translated.
	}