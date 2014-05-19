matching
allowsItem: anItem

	^(expression detect: [:ea | ea allowsItem: anItem] ifNone: [nil]) notNil