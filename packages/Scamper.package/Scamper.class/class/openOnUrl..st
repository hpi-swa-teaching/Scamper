instance creation
openOnUrl: aStringOrUrl
	"Open Scamper browser on specified url.
		Scamper openOnUrl: 'www.squeak.org'
		Scamper openOnUrl: 'file://C%3A/test.htm'
	"

	^ self new
		jumpToUrl: aStringOrUrl asUrl;
		openAsMorph