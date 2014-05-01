instance creation
newOn: aSubject forEvent: aSymbol do: aBlock

	^ self new
		subject: aSubject;
		symbol: aSymbol;
		block: aBlock;
		yourself