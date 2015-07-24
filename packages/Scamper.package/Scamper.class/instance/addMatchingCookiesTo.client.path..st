cookies
addMatchingCookiesTo: aRequest client: aWebClient path: aPath

	sessionCookies  do: [:c | 
			(aWebClient acceptCookie: c host: aWebClient server path: aPath) ifTrue: [
				aRequest addHeader: 'Cookie' value: c asString]].
	
	LongtimeCookies  do: [:c | 
			Transcript show: c.
			(aWebClient acceptCookie: c host: aWebClient server path: aPath) ifTrue: [
				aRequest addHeader: 'Cookie' value: c asString]].
	Transcript show: aRequest.
	^ aRequest
