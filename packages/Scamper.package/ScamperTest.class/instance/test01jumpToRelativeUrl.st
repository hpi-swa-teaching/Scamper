initialize-release
test01jumpToRelativeUrl
	| scamper |
	scamper := (Scamper openOnUrlAsync: 'http://de.selfhtml.org/html/verweise/anzeige/index.htm') wait.
	scamper owner runStepMethods.
	
	(scamper model jumpToUrlAsync: 'zweiteseite.htm') wait.
	scamper owner runStepMethods.
	
	self assert: scamper model currentUrl asString equals: 'http://de.selfhtml.org/html/verweise/anzeige/zweiteseite.htm'.
	scamper delete.