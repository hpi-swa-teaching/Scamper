as yet unclassified
test09newTab
	| a b c |
	a:= Scamper document.
	Scamper jumpToUrlAsync: 'http://www.google.de' asUrl.
	b:= Scamper document.
	Scamper openNewTab.
	Scamper jumpToUrlAsync: 'http://www.wikipedia.de' asUrl.
	c:= Scamper document.
		
	Scamper openTab: ((Scamper tabs at: 1) at: 1).
	self assert: (Scamper document == a).
	
	Scamper openTab: ((Scamper tabs at: 2) at: 2).
	self assert: (Scamper document == b).
	
	Scamper openTab: ((Scamper tabs at: 3) at: 3).
	self assert: (Scamper document == c).