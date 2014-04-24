instance creation
openFile: fullFileName
	Scamper openOnUrl: 
		(FileDirectory forFileName: fullFileName) url , 
		(FileDirectory localNameFor: fullFileName) encodeForHTTP
