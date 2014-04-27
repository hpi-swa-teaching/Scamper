document handling
processUnhandledPage: newSource
	"offer to save it to a file"

	| fileName file |
	self status: 'sittin' translated.
	(newSource url asString endsWith: '.pr')
		ifTrue:
			[ (self confirm: 'Looks like a Squeak project - do you want to load it as such?' translated)
				ifTrue: [ ^ ProjectLoading thumbnailFromUrl: newSource url asString ] ].
	(self
		confirm:
			('unkown content-type {1}--
Would you like to save to a file?' translated format: {newSource contentType}))
		ifFalse: [ ^ false ].
	fileName := ''.
	[ fileName := FillInTheBlank request: 'file to save in' translated initialAnswer: fileName.
	fileName isEmpty
		ifTrue: [ ^ self ].
	file := FileStream fileNamed: fileName.
	file isNil ] whileTrue.
	file reset.
	file binary.
	file nextPutAll: newSource content.
	file close.
	^ true