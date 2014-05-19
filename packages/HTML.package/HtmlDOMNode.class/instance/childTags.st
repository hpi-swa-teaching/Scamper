accessing
childTags

	^((self children collect: [:ea | ea tag]) reject:[:ea | ea = 'comment']) asArray