testing
test05isUrl

	|url1 url2 url3|
	
	scamper := Scamper new.
	url1 := 'http://subdomain.domain.tld/something/apage' asUrl.
	url2 := 'https://subdomain.domain.tld/something/apage' asUrl.
	url3 := 'prot://subdomain.domain.tld/something/apage'asUrl.

	self assert: (scamper  isUrl: url1);
		 assert: (scamper  isUrl: url2);
		 assert: (scamper  isUrl: url3) not.