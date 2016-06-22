browser urls
error401Page
	"return a string of HTML about status 401"
	^ self errorPageTemplate format:{
	'Error 401' translated.
	'An error occured: Unauthorized.' translated.
	}