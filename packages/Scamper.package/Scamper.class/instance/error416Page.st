browser urls
error416Page
	"return a string of HTML about status 416"
	^self errorPageTemplate format:{
	'Error 416' translated.
	'An error occured: Requested range not satisfiable.' translated.
	}