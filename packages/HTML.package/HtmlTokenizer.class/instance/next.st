tokenizing
next
	"return the next HtmlToken, or nil if there are no more"

	| token |
	"branch, depending on what the first character is"
	self atEnd
		ifTrue: [ ^ nil ].
	token := self peekChar = $<
		ifTrue: [ self nextTagOrComment ]
		ifFalse: [ self nextText ].	"return the token, modulo modifications inside of textarea's"
	textAreaLevel > 0
		ifTrue:
			[ (token isTag and: [ token name = 'textarea' ])
				ifTrue:
					[ "textarea tag--change textAreaLevel accordingly"
					textAreaLevel := token isNegated
						ifTrue: [ textAreaLevel - 1 ]
						ifFalse: [ textAreaLevel - 2 ].
					textAreaLevel > 0
						ifTrue:
							[ "still inside a <textarea>, so convert this tag to text"
							^ HtmlText forSource: token source ]
						ifFalse:
							[ "end of the textarea; return the tag"
							^ token ] ].	"end of the textarea"	"inside the text area--return the token as text"
			^ HtmlText forSource: token source ].
	(token isTag and: [ token isNegated not and: [ token name = 'textarea' ] ])
		ifTrue:
			[ "beginning of a textarea"
			inTextArea := true.
			^ token ].
	^ token