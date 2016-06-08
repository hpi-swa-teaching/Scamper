as yet unclassified
test09newTab
	| a b |
	
	(scamper model jumpToUrlAsync: 'http://www.google.de' asUrl) wait.
	scamper owner runStepMethods.
	a:= scamper model document.
	
	scamper model openNewTab.
	
	(scamper model jumpToUrlAsync: 'http://www.wikipedia.de' asUrl) wait.
	scamper owner runStepMethods.
	b:= scamper model document.
		
	scamper model openTab: ((scamper model tabs first) first).
	self assert: scamper model document equals: a.
	
	scamper model openTab: ((scamper model tabs at: 2) at: 2).
	self assert: scamper model document equals: b.
