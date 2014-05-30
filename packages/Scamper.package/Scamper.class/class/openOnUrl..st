instance creation
openOnUrl: aStringOrUrl
	"Open Scamper browser on specified url.
		Scamper openOnUrl: 'www.squeak.org'
		Scamper openOnUrl: 'file://C%3A/test.htm'
	"
	| scamper |
	scamper := self new.
	(scamper jumpToUrlAsync: aStringOrUrl asUrl) wait.
	^ scamper openAsMorph