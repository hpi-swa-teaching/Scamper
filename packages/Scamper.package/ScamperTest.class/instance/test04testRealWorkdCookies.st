initialize-release
test04testRealWorkdCookies

	(scamper model jumpToUrlAsync: 'google.de' asUrl) wait.
	self assert: (Scamper longtimeCookies size) equals: 2