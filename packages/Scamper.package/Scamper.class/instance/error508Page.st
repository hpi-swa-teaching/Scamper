browser urls
error508Page
	"return a string of HTML about status 508"
	^ self errorPageTemplate format:{
	'Error 508' translated.
	'Loop Detected.' translated.
	}