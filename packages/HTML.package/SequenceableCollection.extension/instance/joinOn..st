*html
joinOn: aString

	^ String streamContents:
		[:s |
		self do: [:ea | s nextPutAll: ea asString] separatedBy: [s nextPutAll: aString]]
