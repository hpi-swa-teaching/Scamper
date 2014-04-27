private-tokenizing
nextTag
	"we've seen a < and peek-ed something other than a !.  Parse and return a tag"

	| source negated name attribs attribName attribValue sourceStart sourceEnd c |
	sourceStart := pos - 1.
	attribs := Dictionary new.	"determine if its negated"
	self peekChar = $/
		ifTrue:
			[ negated := true.
			self nextChar ]
		ifFalse: [ negated := false ].	"read in the name"
	self skipSpaces.
	name := self nextName.
	name := name asLowercase.	"read in any attributes"
	[ self skipSpaces.
	c := self peekChar.
	c isNil or: [ c isLetter not ] ]
		whileFalse:
			[ attribName := self nextName.
			attribName := attribName asLowercase.
			self skipSpaces.
			self peekChar = $=
				ifTrue:
					[ self nextChar.
					self skipSpaces.
					attribValue := self nextAttributeValue withoutQuoting ]
				ifFalse: [ attribValue := '' ].
			attribs at: attribName put: attribValue ].
	self skipSpaces.	"determine if the tag is of the form <foo/>"
	self peekChar = $/
		ifTrue: [ self nextChar ].
	self skipSpaces.
	self peekChar = $>
		ifTrue: [ self nextChar ].
	sourceEnd := pos - 1.
	source := text copyFrom: sourceStart to: sourceEnd.
	^ HtmlTag
		source: source
		name: name asLowercase
		negated: negated
		attribs: attribs