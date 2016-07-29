browser urls
error509Page
	"return a string of HTML about status 509"
	^ self errorPageTemplate format:{
	'Error 509' translated.
	'Bandwidth Limit Exceeded.' translated.
	}