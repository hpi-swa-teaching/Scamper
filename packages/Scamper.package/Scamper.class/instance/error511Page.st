browser urls
error511Page
	"return a string of HTML about status 511"
	^ self errorPageTemplate format:{
	'Error 511' translated.
	'Network Authentication Required.' translated.
	}