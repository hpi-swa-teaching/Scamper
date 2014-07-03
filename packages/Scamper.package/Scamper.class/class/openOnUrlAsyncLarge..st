instance creation
openOnUrlAsyncLarge: aStringOrUrl
	"Open Scamper browser on specified url.
		Scamper openOnUrl: 'www.squeak.org'
		Scamper openOnUrl: 'file://C%3A/test.htm'
	"
	^ (self new jumpToUrlAsync: aStringOrUrl asUrl) 
		then: [ :scamper | scamper openAsMorph extent: 800@650 ]