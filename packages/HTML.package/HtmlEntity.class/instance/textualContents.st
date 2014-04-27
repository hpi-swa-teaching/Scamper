contents
textualContents
	"return a string with the concatenated contents of all textual sub-entities"
	^String streamContents: [ :s |
		contents do: [ :e | s nextPutAll: e textualContents ] ]