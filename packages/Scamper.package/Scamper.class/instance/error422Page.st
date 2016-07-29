browser urls
error422Page
	"return a string of HTML about status 422"
	^ self errorPageTemplate format:{
	'Error 422' translated.
	'An error occured: Unprocessable Entity.' translated.
	}