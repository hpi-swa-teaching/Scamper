browser urls
error409Page
	"return a string of HTML about status 409"
	^ self errorPageTemplate format:{
	'Error 409' translated.
	'An error occured: Conflict.' translated.
	}