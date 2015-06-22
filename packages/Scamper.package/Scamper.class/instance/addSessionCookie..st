cookies
addSessionCookie: aCookie

	"remove older duplicates"
	sessionCookies do: [:cookie |
		sessionCookies := sessionCookies reject: [:any | any = aCookie]].
	sessionCookies add: aCookie.