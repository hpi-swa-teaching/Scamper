*HTML
replaceHtmlCharRefs
	| pos ampIndex scIndex special specialValue outString outPos newOutPos |
	outString := String new: self size.
	outPos := 0.
	pos := 1.
	[ pos <= self size ]
		whileTrue:
			[ "read up to the next ampersand"
			ampIndex := self
				indexOf: $&
				startingAt: pos
				ifAbsent: [ 0 ].
			ampIndex = 0
				ifTrue:
					[ pos = 1
						ifTrue: [ ^ self ]
						ifFalse: [ ampIndex := self size + 1 ] ].
			newOutPos := outPos + ampIndex - pos.
			outString
				replaceFrom: outPos + 1
				to: newOutPos
				with: self
				startingAt: pos.
			outPos := newOutPos.
			pos := ampIndex.
			ampIndex <= self size
				ifTrue:
					[ "find the $;"
					scIndex := self
						indexOf: $;
						startingAt: ampIndex
						ifAbsent: [ self size + 1 ].
					special := self copyFrom: ampIndex + 1 to: scIndex - 1.
					[ specialValue := HtmlEntity valueOfHtmlEntity: special ] ifError: [ specialValue := nil ].
					specialValue
						ifNil:
							[ "not a recognized entity.  wite it back"
							scIndex := scIndex min: self size.
							newOutPos := outPos + scIndex - ampIndex + 1.
							outString
								replaceFrom: outPos + 1
								to: newOutPos
								with: self
								startingAt: ampIndex.
							outPos := newOutPos ]
						ifNotNil:
							[ outPos := outPos + 1.
							outString at: outPos put: specialValue ].
					pos := scIndex + 1 ] ].
	^ outString copyFrom: 1 to: outPos