formatting
embeddedMorphFor: url
	| morphClass |
	morphClass := self embeddedMorphClassFor: url.
	^morphClass ifNotNil:[morphClass new]