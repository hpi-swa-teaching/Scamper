instance creation
fileReaderServicesForFile: fullName suffix: suffix


	^(suffix = 'htm') | (suffix = 'html') 
		ifTrue: [self services]
		ifFalse: [#()]