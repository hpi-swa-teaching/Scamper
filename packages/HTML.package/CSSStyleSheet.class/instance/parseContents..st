parsing
parseContents: aStream

	| in  |
	
	aStream upToAll: '<!--'.
	aStream position >= self end 
		ifTrue: 
		[
			in := ReadStream on: (aStream reset next: self end).
			in position: self start.
		]
		ifFalse: 
		[
			| styleEnd |
			aStream position: self end-1. 
			[(aStream position > start) and: [aStream peek ~= $>]] whileTrue: [aStream back].
			((aStream position > start) and: [aStream peek = $>]) ifTrue: [aStream back].
			[(aStream position > start) and: [aStream peek = $-]] whileTrue: [aStream back].
			styleEnd := aStream position.
			in := ReadStream on: (aStream reset next: styleEnd).
			in position: self start.
			in upToAll: '<!--'.			
		].
	
	in skipSeparators. 
	self parseStyles: in media: self media.
	