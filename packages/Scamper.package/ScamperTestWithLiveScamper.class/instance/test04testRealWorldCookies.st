initialize-release
test04testRealWorldCookies

	"Google transmits two cookies. If they are saved by the browser and sent again in the next request, no new cookies are transmitted so they aren't changed."

	| oldCookies |
	Scamper longtimeCookies: OrderedCollection new.
	(scamper model jumpToUrlAsync: 'google.de' asUrl) wait.
	self assert: 2  equals: (Scamper longtimeCookies size) .

	oldCookies := Scamper longtimeCookies.
	
	(scamper model jumpToUrlAsync: 'google.de' asUrl) wait.
	self assert:  2 equals: (Scamper longtimeCookies size).
	self assert: Scamper longtimeCookies equals: oldCookies.
	
	