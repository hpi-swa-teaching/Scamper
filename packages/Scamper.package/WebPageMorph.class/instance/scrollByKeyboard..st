event handling
scrollByKeyboard: event 
	"If event is up/down/left/right/pgup/pgdown then scroll and answer true"
	event keyCharacter = Character arrowUp
		ifTrue: 
			[scrollBar scrollUp: 3.
			^ true].
	event keyCharacter = Character arrowDown
		ifTrue: 
			[scrollBar scrollDown: 3.
			^ true].
	event keyCharacter = Character arrowRight
		ifTrue: 
			[hScrollBar scrollDown: 3.
			^ true].
	event keyCharacter = Character arrowLeft
		ifTrue: 
			[hScrollBar scrollUp: 3.
			^ true].
	event keyCharacter = Character pageDown
		ifTrue:
			[scrollBar scrollDown: 15.
			^ true].
	event keyCharacter = Character pageUp
		ifTrue:
			[scrollBar scrollUp: 15.
			^ true].
	^ false