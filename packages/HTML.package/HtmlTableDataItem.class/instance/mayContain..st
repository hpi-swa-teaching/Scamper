testing
mayContain: anEntity
	^anEntity isTextualEntity or: [ anEntity isBlockEntity or: [ anEntity isHeader ] ]