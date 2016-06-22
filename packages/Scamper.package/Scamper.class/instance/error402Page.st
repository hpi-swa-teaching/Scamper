browser urls
error402Page
	"return a string of HTML about status 402"
	^ self errorPageTemplate format:{
	'Error 402' translated.
	'An error occured: Payment Required.' translated.
	}