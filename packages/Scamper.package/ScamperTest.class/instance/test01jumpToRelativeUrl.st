initialize-release
test01jumpToRelativeUrl
	| scamper |

	<timeout:15>
	scamper := Scamper openOnUrl: 'http://wiki.selfhtml.org/wiki/Startseite'.
	scamper owner runStepMethods.
	
	(scamper model jumpToUrlAsync: 'Referenzen') wait.
	scamper owner runStepMethods.
	
	self assert: (scamper model currentUrl asString) equals: 'http://wiki.selfhtml.org/wiki/Referenzen'.
	scamper delete.