tests - cookies
testCookieDomainRules
	"Test cookie domain rules"

	"Request host matches domain"
	self assert: (WebClient new 
			acceptCookie: (WebCookie new domain: 'www.domain.com') 
			host: 'www.domain.com' 
			path: '/').

	"Request host matches subdomain"
	self assert: (WebClient new 
			acceptCookie: (WebCookie new domain: '.domain.com') 
			host: 'www.domain.com' 
			path: '/').

	"Request host does not match domain"
	self deny: (WebClient new 
			acceptCookie: (WebCookie new domain: 'www.domain.com') 
			host: 'ftp.domain.com' 
			path: '/').

	"Request host does not match subdomain"
	self deny: (WebClient new 
			acceptCookie: (WebCookie new domain: '.domain.com') 
			host: 'www.someother.org' 
			path: '/').

	"Request host has an extra subdomain"
	self deny: (WebClient new 
			acceptCookie: (WebCookie new domain: '.domain.com') 
			host: 'foo.bar.domain.com' 
			path: '/').
