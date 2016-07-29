browser urls
error411Page
	"return a string of HTML about status 411"
	^ self errorPageTemplate format:{
	'Error 411' translated.
	'An error occured: Length Required.' translated.
	}