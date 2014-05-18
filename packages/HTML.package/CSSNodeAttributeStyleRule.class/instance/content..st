as yet unclassified
content: aString

	content := '[style="',aString,'"]{',aString,'}'.
	self start: 1.
	self end: content size.
	self parseContents: (ReadStream on: content)