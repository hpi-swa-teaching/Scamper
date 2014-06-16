testing
test01IncludeLinkedStylesheet 
	| scamper |
	
	scamper := Scamper openOnUrl: 'http://swt-scamper.azurewebsites.net/HTML-Tests/test01IncludeLinkedStylesheet/stylesheet_test.html'.
	scamper owner runStepMethods.
	self assert: '{h1 { color:blue; }}' equals: (ReadStream on: scamper model document allStyles) contents asString.
	scamper delete.