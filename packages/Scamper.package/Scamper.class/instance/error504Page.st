browser urls
error504Page
	"return a string of HTML about status 504"
	^ self errorPageTemplate format:{
	'Error 504' translated.
	'An error occured: Gateway Time-out.' translated.
	}