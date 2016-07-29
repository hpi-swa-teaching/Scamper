browser urls
error429Page
	"return a string of HTML about status 429"
	^self errorPageTemplate format:{
	'Error 429' translated.
	'An error occured: Too Many Requests.' translated.
	}