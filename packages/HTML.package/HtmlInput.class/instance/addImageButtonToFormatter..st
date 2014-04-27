formatting
addImageButtonToFormatter: formatter
	"is it a submit button?"
	| formData imageUrl morph |
	(imageUrl := self getAttribute: 'src') ifNil: [^self].
	formatter baseUrl
		ifNotNil: [imageUrl := imageUrl asUrlRelativeTo: formatter baseUrl].

	morph := DownloadingImageMorph new.
	morph defaultExtent: self imageExtent.
	morph altText: self alt.
	morph url: imageUrl.

	value := self getAttribute: 'name' default: 'Submit'.
	formData := formatter currentFormData.
	morph
		on: #mouseUp
		send: #mouseUpFormData:event:linkMorph:
		to: self
		withValue: formData.
	formatter addIncompleteMorph: morph
