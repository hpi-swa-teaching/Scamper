initialize-release
test05isUrl

	|url1 url2 url3|
	url1 := 'http://subdomain.domain.tld/something/apage' asUrl.
	url2 := 'https://subdomain.domain.tld/something/apage' asUrl.
	url3 := 'prot://subdomain.domain.tld/something/apage'asUrl.

	self assert: (scamper model isUrl: url1);
		 assert: (scamper model isUrl: url2);
		 assert: (scamper model isUrl: url3) not.