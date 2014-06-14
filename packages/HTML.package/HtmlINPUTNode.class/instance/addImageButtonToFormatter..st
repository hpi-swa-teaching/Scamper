rendering
addImageButtonToFormatter: formatter
	"is it a submit button?"
	| formData imageUrl morph |
	(imageUrl := self attributes at: 'src' ifAbsent: [nil]) ifNil: [^self].
	formatter baseUrl
		ifNotNil: [imageUrl := imageUrl asUrlRelativeTo: formatter baseUrl].

	morph := DownloadingImageMorph new.
	morph defaultExtent: self imageExtent.
	morph altText: self alt.
	morph url: imageUrl.

	value := self attributes at: 'name' ifAbsent: ['Submit'].
	formData := self associatedForm.
	morph
		on: #mouseUp
		send: #mouseUpFormData:event:linkMorph:
		to: self
		withValue: formData.
	formatter addIncompleteMorph: morph
