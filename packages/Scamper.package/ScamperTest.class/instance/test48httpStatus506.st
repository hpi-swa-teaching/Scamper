as yet unclassified
test48httpStatus506

	| testUrl testString |
	
	"Naive Test if the title of the loaded page matches the title of the original error page."
	testUrl := 'browser:506' asUrl.
	testString := 'Scamper: Error 506'.

	(scamper model jumpToUrlAsync: testUrl asUrl) wait.
	scamper owner runStepMethods. 

	self assert: (scamper model labelString = testString).