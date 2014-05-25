initialize-release
test01jumpToRelativeUrl
	| scamper |
	scamper := Scamper openOnUrl: 'http://de.selfhtml.org/html/verweise/anzeige/index.htm'.
	(Delay forMilliseconds: 500) wait.
	scamper model step.
	scamper  model jumpToUrl: 'zweiteseite.htm'.
	(Delay forMilliseconds: 500) wait.
	scamper model step.
	self assert: scamper model currentUrl asString equals: 		'http://de.selfhtml.org/html/verweise/anzeige/zweiteseite.htm'.
	scamper delete.