as yet unclassified
test09newTab
	| a b |
	(scamper model jumpToUrlAsync: 'http://www.google.de' asUrl) wait.
	scamper owner runStepMethods.
	a:= scamper model document.
	scamper model openNewTab.
	
	(scamper model jumpToUrlAsync: 'browser:about' asUrl) wait.
	scamper owner runStepMethods.
	b:= scamper model document.

	scamper model openTab: 1.
	Transcript show: a asString.
	Transcript show: scamper model document asString.
	self assert: scamper model document == a.
	
	scamper model openTab: 2.
	self assert: scamper model document == b.
