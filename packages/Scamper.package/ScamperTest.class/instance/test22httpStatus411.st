as yet unclassified
test22httpStatus411

	| testUrl testString |
	
	"Naive Test if the title of the loaded page matches the title of the original error page."
	testUrl := 'browser:411' asUrl.
	testString := 'Scamper: Error 411'.

	(scamper model jumpToUrlAsync: testUrl asUrl) wait.
	scamper owner runStepMethods. 

	self assert: (scamper model labelString = testString).