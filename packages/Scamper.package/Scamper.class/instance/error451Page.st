browser urls
error451Page
	"return a string of HTML about status 451"
	^ self errorPageTemplate format:{
	'Error 451' translated.
	'An error occured: Unavailable For Legal Reasons.' translated.
	}