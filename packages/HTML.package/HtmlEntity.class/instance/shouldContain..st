testing
shouldContain: anEntity
	"whether, according to the HTML DTD, this element should actually contain anEntity.  Used for checking the quality of a pages HTML"
	^self mayContain: anEntity