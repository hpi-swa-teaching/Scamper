as yet unclassified
addToFormatter: formatter
	| morph url |
	self src isNil ifTrue: [ ^self ].
	url := self src.
	url := url asUrlRelativeTo: self document url asUrl.
	morph := DownloadingImageMorph new.
	morph defaultExtent: self imageExtent.
	morph altText: self alt.
	morph url: url.
	
	formatter addIncompleteMorph: morph.