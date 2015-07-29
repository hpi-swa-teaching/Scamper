document handling
displayImagePage: newSource
	"an image--embed it in a text"
	| image imageMorph handled|
	handled := true.
	
	"check if Image is svg"
	((newSource contentType) includesSubString: 'svg') ifTrue: [
		[imageMorph := SVGMorph fromFileStream: newSource contentStream.]
			ifError: [:err :crvr | imageMorph := StringMorph new; contents: 'You need SVGMorphic to display svg content!'.] 
	]
	"if not -> use default ImageReader"
	ifFalse: [
	image := ImageReadWriter formFromStream: (RWBinaryOrTextStream with: newSource content) binary reset.
	imageMorph := ImageMorph new image: image.
	].

	self webContentsPane showImagePage: imageMorph.
	currentUrl := newSource url.
	pageSource := newSource content.

	"remove it from the history--these thigns are too big!"
	"ideally, there would be a smarter history mechanism that can do things like remove items when memory consumption gets too high...."
"	recentDocuments removeLast."

	self changeAll: 	#(currentUrl relabel hasLint lint backgroundColor formattedPage formattedPageSelection).
	self status: 'done' translated.
	^handled