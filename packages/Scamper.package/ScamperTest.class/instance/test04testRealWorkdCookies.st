as yet unclassified
test04testRealWorkdCookies
	|  scamper |
	
	scamper := Scamper new.
	(scamper jumpToUrlAsync: 'google.de' asUrl) wait.
	self assert: (Scamper longtimeCookies size) equals: 2