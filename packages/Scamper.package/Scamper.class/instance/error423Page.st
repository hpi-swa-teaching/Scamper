browser urls
error423Page
	"return a string of HTML about status 423"
	^ self errorPageTemplate format:{
	'Error 423' translated.
	'An error occured: 	Locked.' translated.
	}