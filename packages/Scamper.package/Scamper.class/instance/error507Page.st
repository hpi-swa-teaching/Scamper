browser urls
error507Page
	"return a string of HTML about status 507"
	^ self errorPageTemplate format:{
	'Error 507' translated.
	'An error occured: Insufficient Storage.' translated.
	}