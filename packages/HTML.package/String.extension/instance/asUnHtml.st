*html
asUnHtml
	"Strip out all Html stuff (commands in angle brackets <>) and convert
the characters &<> back to their real value.  Leave actual cr and tab as
they were in text."
	| in out char rest |
	in := ReadStream on: self.
	out := WriteStream on: (String new: self size).
	[in atEnd] whileFalse:
		[in peek = $<
			ifTrue: [in unCommand] 	"Absorb <...><...>"
			ifFalse: [(char := in next) = $&
						ifTrue: [rest := in upTo: $;.
								out nextPutAll: (HtmlEntities
									at: rest
									ifAbsent: [
										(rest beginsWith: '#')
											ifTrue: [
												rest second asLowercase = $x ifTrue: 
													[rest := '#16r', rest allButFirst allButFirst].
												Character value: rest allButFirst asNumber]
											ifFalse: [
												in last = $;
													ifTrue: ['&', rest, ';']
													ifFalse: ['&', rest]
													]]) asString]
						ifFalse: [out nextPut: char]].
		].
	^ out contents