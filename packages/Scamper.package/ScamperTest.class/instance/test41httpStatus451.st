as yet unclassified
test41httpStatus451

	| testUrl testString |
	
	"Naive Test if the title of the loaded page matches the title of the original error page."
	testUrl := 'browser:451' asUrl.
	testString := 'Scamper: Error 451'.

	(scamper model jumpToUrlAsync: testUrl asUrl) wait.
	scamper owner runStepMethods. 

	self assert: (scamper model labelString = testString).