browser urls
error502Page
	"return a string of HTML about status 502"
	^ self errorPageTemplate format:{
	'Error 502' translated.
	'An error occured: Bad Gateway.' translated.
	}