browser urls
error410Page
	"return a string of HTML about status 410"
	^ self errorPageTemplate format:{
	'Error 410' translated.
	'An error occured: Gone.' translated.
	}