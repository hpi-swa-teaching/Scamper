rendering
downloadStateIn: aScamper
	"download the image"
	| doc |
	doc := url retrieveContents.
	downloadQueue nextPut: doc.

