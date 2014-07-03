rendering
setMinimumHeight: aHeight
	
	| bodyMorph |
	bodyMorph := self submorphs detect: [:m | m isHtmlBodyMorph ] ifNone: [ nil ].
	bodyMorph ifNotNil: [ :m | m minimumHeight: aHeight ]