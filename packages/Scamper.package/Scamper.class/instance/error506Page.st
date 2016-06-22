browser urls
error506Page
	"return a string of HTML about status 506"
	^ self errorPageTemplate format:{
	'Error 506' translated.
	'An error occured: Variant Also Negotiates.' translated.
	}