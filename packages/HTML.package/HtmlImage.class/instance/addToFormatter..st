formatting
addToFormatter: formatter
	| morph url |
	self src isNil ifTrue: [ ^self ].
	url := self src.
	formatter baseUrl ifNotNil: [ 
		url := url asUrlRelativeTo: formatter baseUrl asUrl].


	morph := DownloadingImageMorph new.
	morph defaultExtent: self imageExtent.
	morph altText: self alt.
	morph url: url.
	self imageMapName
		ifNotNil:
			[morph imageMapName: self imageMapName.
			morph formatter: formatter].

	formatter addIncompleteMorph: morph.