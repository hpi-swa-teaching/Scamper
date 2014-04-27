document handling
displayFlashPage: newSource
	"A shockwave flash document -- embed it in a text"
	| attrib stream player |
	stream := (RWBinaryOrTextStream with: newSource content) binary reset.
	(FlashFileReader canRead: stream) ifFalse:[^false]. "Not a flash file"
	player := (FlashMorphReader on: stream) processFileAsync.
	player sourceUrl: newSource url.
	player startPlaying.
	attrib := TextAnchor new anchoredMorph: player.
	formattedPage := (Character value: 1) asText.
	backgroundColor := self defaultBackgroundColor.
	formattedPage addAttribute: attrib from: 2 to: 2.

	currentUrl := newSource url.
	pageSource := newSource content.

	"remove it from the history--these thigns are too big!"
	"ideally, there would be a smarter history mechanism that can do things like remove items when memory consumption gets too high...."
"	recentDocuments removeLast."

	self changeAll: 	#(currentUrl relabel hasLint lint backgroundColor formattedPage formattedPageSelection).
	self status: 'sittin' translated.
	^true