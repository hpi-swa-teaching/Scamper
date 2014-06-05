accessing
associatedForm
	^ associatedForm ifNil: [ associatedForm := self parent associatedForm ]