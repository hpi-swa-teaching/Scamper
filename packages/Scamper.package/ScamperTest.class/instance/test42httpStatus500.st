as yet unclassified
test42httpStatus500

	| testUrl testString |
	
	"Naive Test if the title of the loaded page matches the title of the original error page."
	testUrl := 'browser:500' asUrl.
	testString := 'Scamper: Error 500'.

	(scamper model jumpToUrlAsync: testUrl asUrl) wait.
	scamper owner runStepMethods. 

	self assert: (scamper model labelString = testString).