character entities
valueOfHtmlEntity: specialEntity
	"Return the character equivalent to the HTML entity."

	| value |
	(specialEntity beginsWith: '#')		"Handle numeric entities"
		ifTrue: [
			"NB: We can display only simple numeric special entities in the"
			"range [9..255] (HTML 3.2).  HTML 4.01 allows the specification of 16 bit"
			"characters, so we do a little fiddling to handle a few special cases"

			value := self convertToNumber: (specialEntity copyFrom: 2 to: specialEntity size).

			"Replace rounded left & right double quotes (HTML 4.01) with simple double quote"
			(value = 8220 or: [value = 8221]) ifTrue: [ value := $" asInteger ].

			"Replace rounded left & right single quotes (HTML 4.01) with simple single quote"
			(value = 8216 or: [value = 8217]) ifTrue: [ value := $' asInteger ].

			"Replace with a space if outside the normal range (arbitrary choice)"
			(value < 9 or: [value > 255]) ifTrue: [ value := 32 ].
			]
		ifFalse: [
			"Otherwise this is most likely a named character entity"
			value := ReverseCharacterEntities at: specialEntity ifAbsent: [^nil].
			].

	 ^Character value: value.