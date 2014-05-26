instance creation
newInstancePointingAt: aStringOrUrl
	"Answer a Scamper browser on specified url.
		Scamper newInstancePointingAt: 'www.squeak.org'
		Scamper newInstancePointingAt: 'file://C%3A/test.htm'
	"

	^ (self new
		jumpToUrl: aStringOrUrl asUrl) morphicWindow applyModelExtent