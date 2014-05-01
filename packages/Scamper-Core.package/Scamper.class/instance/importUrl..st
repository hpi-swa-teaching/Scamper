menus
importUrl: aFile
	| oldFile url strings position |
	oldFile := FileStream oldFileOrNoneNamed: aFile.
	oldFile isBinary 
		ifTrue:[ self error: 'not url file' translated]
		ifFalse:[ strings := (oldFile contentsOfEntireFile) substrings.
				strings do:[:sub |
				( sub includesSubString: 'URL=')
					ifTrue:[ position := sub findString: 'http://'.
							position > 0 ifTrue:[url := sub copyFrom: position to: sub size]
										ifFalse:[ position := sub findString: 'ftp://'.
												position > 0 ifTrue:[url := sub copyFrom: position to: sub size].
												]
							]	
					].
				]. 
	url =='' ifTrue:[ self error: 'blank file: url not exist' translated].
	^url asUrl.