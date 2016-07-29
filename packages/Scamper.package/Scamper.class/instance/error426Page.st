browser urls
error426Page
	"return a string of HTML about status 426"
	^ self errorPageTemplate format:{
	'Error 426' translated.
	'An error occured: Upgrade Required.' translated.
	}