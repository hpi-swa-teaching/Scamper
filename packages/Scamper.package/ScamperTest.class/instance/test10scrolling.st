as yet unclassified
test10scrolling

	| webPage event |
	event := ScrollingEventSimulator new keyString: Character arrowLeft.
	webPage := scamper model webPageMorph.
	self assert: ((webPage keyStroke: event) = webPage).
	event keyString: Character arrowRight.
	self assert: ((webPage keyStroke: event) = webPage).
	event keyString: Character arrowUp.
	self assert: ((webPage keyStroke: event) = webPage).
	event keyString: Character arrowDown.
	self assert: ((webPage keyStroke: event) = webPage).
	event keyString: Character pageUp.
	self assert: ((webPage keyStroke: event) = webPage).
	event keyString: Character pageDown.
	self assert: ((webPage keyStroke: event) = webPage).