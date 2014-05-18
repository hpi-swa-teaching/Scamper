accessing
childDTDTags

	^((self children collect: [:ea | ea dtdTag]) reject:[:ea | ea = 'COMMENT']) asArray