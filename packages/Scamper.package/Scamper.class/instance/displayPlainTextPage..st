document handling
displayPlainTextPage: newSource
	"treat as plain text"
	pageSource := newSource content.
	document := nil.
	formattedPage := pageSource withSqueakLineEndings.
	backgroundColor := self defaultBackgroundColor.
	currentUrl := newSource url.

	self status: 'sittin' translated.
	self changeAll: 	#(currentUrl relabel hasLint lint formattedPage formattedPage
formattedPageSelection).
	^true