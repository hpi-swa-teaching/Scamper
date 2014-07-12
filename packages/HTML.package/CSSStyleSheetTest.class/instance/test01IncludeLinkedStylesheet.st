testing
test01IncludeLinkedStylesheet 

"This test is empty because we shut down the server. The files are available in our wiki: https://github.com/SWTI2014/SWTI2014-Project-02/wiki/Resources-for-integration-tests-and-build-screenshots"

	self assert: true.
	
"	| scamper |
	
	scamper := Scamper openOnUrl: 'http://swt-scamper.azurewebsites.net/HTML-Tests/test01IncludeLinkedStylesheet/stylesheet_test.html'.
	scamper owner runStepMethods.
	self assert: '{h1 { color:blue; }}' equals: (ReadStream on: scamper model document allStyles) contents asString.
	scamper delete."