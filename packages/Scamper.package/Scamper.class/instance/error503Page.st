browser urls
error503Page
	"return a string of HTML about status 503"
	^ self errorPageTemplate format:{
	'Error 503' translated.
	'An error occured: Service Unavailable.' translated.
	}