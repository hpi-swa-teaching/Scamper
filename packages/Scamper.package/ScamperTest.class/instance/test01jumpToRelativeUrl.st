initialize-release
test01jumpToRelativeUrl
	| scamper |

	
	scamper := Scamper openOnUrl: 'http://wiki.selfhtml.org/wiki/Startseite'.
	scamper owner runStepMethods.
	
	(scamper model jumpToUrlAsync: 'Referenz') wait.
	scamper owner runStepMethods.
	
	self assert: (scamper model currentUrl asString) = 'http://wiki.selfhtml.org/wiki/Referenz'.
	scamper delete