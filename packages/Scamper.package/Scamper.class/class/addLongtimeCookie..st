cookies
addLongtimeCookie: aCookie

	"remove older duplicates"
	LongtimeCookies do: [:cookie |
		LongtimeCookies  := LongtimeCookies reject: [:any | any = aCookie]].
	LongtimeCookies add: aCookie