user interface
readUrlFromFile: aFile
	| oldFile url |
	oldFile := FileStream oldFileOrNoneNamed: aFile.
	oldFile isBinary 
		ifTrue:[ self error: 'not url file' translated]
		ifFalse:[url := (oldFile contentsOfEntireFile) withBlanksTrimmed.
				url =='' ifTrue:[ self error: 'blank file: url not exist' translated].
				^url asUrl].
	