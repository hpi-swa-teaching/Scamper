browser urls
error425Page
	"return a string of HTML about status 425"
	^self errorPageTemplate format:{
	'Error 425' translated.
	'An error occured: Unordered Collection.' translated.
	}