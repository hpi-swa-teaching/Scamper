formatting commands
addString: aString
	"adds the text in the given string.  It collapses spaces unless we are in a preformatted region"

	| space compacted lastC i |
	aString isEmpty
		ifTrue: [ ^ self ].
	space := Character space.
	preformattedLevel > 0
		ifTrue:
			[ "add all the characters as literals"
			outputStream nextPutAll: aString.	"update the counters"
			lastC := aString last.
			(lastC = space or: [ lastC = Character cr ])
				ifTrue:
					[ "how many of these are there?"
					i := aString size - 1.
					[ i >= 1 and: [ (aString at: i) = lastC ] ] whileTrue: [ i := i - 1 ].
					i = 0
						ifTrue:
							[ "the whole string is the same character!"
							lastC = space
								ifTrue:
									[ precedingSpaces := precedingSpaces + aString size.
									precedingNewlines := 0.
									^ self ]
								ifFalse:
									[ precedingSpaces := 0.
									precedingNewlines := precedingNewlines + aString size.
									^ self ] ].
					lastC = space
						ifTrue:
							[ precedingSpaces := aString size - i.
							precedingNewlines := 0 ]
						ifFalse:
							[ precedingSpaces := 0.
							precedingNewlines := aString size - i ] ] ]
		ifFalse:
			[ compacted := aString withSeparatorsCompacted.
			compacted = ' '
				ifTrue:
					[ "no letters in the string--just white space!"
					(precedingNewlines = 0 and: [ precedingSpaces = 0 ])
						ifTrue:
							[ precedingSpaces := 1.
							outputStream nextPut: space ].
					^ self ].
			(compacted first = Character space and: [ precedingSpaces > 0 or: [ precedingNewlines > 0 ] ])
				ifTrue: [ compacted := compacted copyFrom: 2 to: compacted size ].
			outputStream nextPutAll: compacted.	"update counters"
			precedingNewlines := 0.
			precedingSpaces := compacted last = space
				ifTrue: [ 1 ]
				ifFalse: [ 0 ] ]