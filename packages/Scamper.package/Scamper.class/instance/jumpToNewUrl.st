changing page
jumpToNewUrl
	"change to a new, user-specified page"
	| newUrl |
	newUrl := FillInTheBlank request: 'url to visit' translated initialAnswer: currentUrl asString.
	(newUrl isNil or: [ newUrl isEmpty ]) ifTrue: [ ^self ].
	self jumpToAbsoluteUrl: newUrl