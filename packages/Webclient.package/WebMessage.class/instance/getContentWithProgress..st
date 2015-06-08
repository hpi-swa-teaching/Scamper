private
getContentWithProgress: progressBlockOrNil
	"Reads available content and returns it."

	| length result |
	length := self contentLength.
	result := (stream isBinary ifTrue:[ ByteArray ] ifFalse: [ ByteString ]) 
		new: (length ifNil: [ 1000 ])
		streamContents: [ :outputStream | 
			self 
				streamFrom: stream
				to: outputStream
				size: length
				progress: progressBlockOrNil ].
	(self headerAt: 'content-encoding') = 'gzip' ifFalse: [ ^result ].
	^(GZipReadStream on: result) upToEnd
