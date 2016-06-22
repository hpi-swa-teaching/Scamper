browser urls
error421Page
	"return a string of HTML about status 421"
	^self errorPageTemplate format:{
	'Error 421' translated.
	'An error occured: Misdirected Request.' translated.
	}