testing
tagIsEmpty: aTag

	| e |

	e := elements detect: [:ea | ea tagMatches: aTag] ifNone: [nil].
	^e notNil ifTrue: [e isEmpty] ifFalse: [false]