initialize-release
test04testRealWorldCookies

	"Google transmits two cookies. If they are saved by the browser and sent again in the next request, no new cookies are transmitted so they aren't changed."

	| oldCookies |

	Scamper longtimeCookies: OrderedCollection new.

	(scamper model jumpToUrlAsync: 'google.de' asUrl) wait.
	self assert: (Scamper longtimeCookies size) equals: 2.

	oldCookies := Scamper longtimeCookies.
	
	(scamper model jumpToUrlAsync: 'google.de' asUrl) wait.
	self assert: (Scamper longtimeCookies size) equals: 2.
	self assert: Scamper longtimeCookies equals: oldCookies.
	
	