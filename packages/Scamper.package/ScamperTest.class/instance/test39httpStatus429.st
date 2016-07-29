as yet unclassified
test39httpStatus429

	| testUrl testString |
	
	"Naive Test if the title of the loaded page matches the title of the original error page."
	testUrl := 'browser:429' asUrl.
	testString := 'Scamper: Error 429'.

	(scamper model jumpToUrlAsync: testUrl asUrl) wait.
	scamper owner runStepMethods. 

	self assert: (scamper model labelString = testString).