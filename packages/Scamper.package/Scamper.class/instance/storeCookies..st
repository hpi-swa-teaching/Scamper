cookies
storeCookies: aCollection

	aCollection do: [:cookie |
		"valid expiry -> longtimeCookie"
		(cookie expiry notNil and: [cookie expiry > DateAndTime now]) ifTrue: [
			Scamper addLongtimeCookie: cookie].
		"no exiry -> session cookie"
		(cookie expiry isNil) ifTrue: [
			self addSessionCookie: cookie]].
		

	