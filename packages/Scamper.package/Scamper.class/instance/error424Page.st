browser urls
error424Page
	"return a string of HTML about status 424"
	^self errorPageTemplate format:{
	'Error 424' translated.
	'An error occured: Failed Dependency.' translated.
	}