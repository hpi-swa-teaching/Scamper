initialize-release
test01jumpToRelativeUrl
	| scamper |
	scamper := Scamper openOnUrl: 'http://de.selfhtml.org/html/verweise/anzeige/index.htm'.
	scamper owner runStepMethods.
	
	(scamper model jumpToUrlAsync: 'zweiteseite.htm') wait.
	scamper owner runStepMethods.
	
	self assert: scamper model currentUrl asString equals: 'http://de.selfhtml.org/html/verweise/anzeige/zweiteseite.htm'.
	scamper delete.