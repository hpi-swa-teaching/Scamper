browser urls
error501Page
	"return a string of HTML about status 501"
	^ self errorPageTemplate format:{
	'Error 501' translated.
	'An error occured: Not Implemented.' translated.
	}