pages
changeLog
	"This method was automatically generated. Edit it using:"
	"WebClientHelp edit: #changeLog"
	^HelpTopic
		title: 'Version History'
		contents: 
'WebClient 1.4:
* Fixes cookie handling to be in line with RFC 2109
* Provide the final redirect url in requests
* OAuth support via WebUtils.
* Support for POST using chunked transfer-encoding

WebClient 1.3:
* Added logging in common log format
* Added support for SSL/TLS via SqueakSSL.

WebClient 1.2:
* Added support for multipart/form-data posts
* Added WebSocket support

WebClient 1.1:
* Added support for HEAD, TRACE, OPTIONS, and PUT methods

WebClient 1.0: 
* Initial release.
!' readStream nextChunkText