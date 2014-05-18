private
getContent
	"Do not read any content if this was a HEAD request or code is 204 (no content)"
	(request method = 'HEAD' or: [code = 204]) ifTrue:[^''].
	^super getContent