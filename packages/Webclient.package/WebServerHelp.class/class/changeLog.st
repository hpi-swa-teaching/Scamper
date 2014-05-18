pages
changeLog
	"This method was automatically generated. Edit it using:"
	"WebServerHelp edit: #changeLog"
	^HelpTopic
		title: 'Versions'
		contents: 
'WebServer 1.4:
* Fixes cookie handling to be in line with RFC 2109
* Support for responses using chunked transfer-encoding

WebServer 1.3:
* Added logging in common log format
* Added support for SSL/TLS via SqueakSSL.

WebServer 1.2:
* Added support for multipart/form-data posts
* Added WebSocket support

WebServer 1.1:
* Added support for specific request methods
* Implement HEAD, TRACE, and OPTIONS in WebServer

WebServer 1.0: 
* Initial release.
!' readStream nextChunkText