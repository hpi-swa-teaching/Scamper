as yet unclassified
forkDownloadWhenFinished: aBlock 
	| doc |
	image ifNotNil: [^self].
	self setContents.
	[
		[
			doc := url retrieveContents.
			(doc notNil and: [doc mainType = 'image'])
				ifTrue: [image := ImageReadWriter formFromStream: doc contentStream binary].
		] ifError: [].
		WorldState addDeferredUIMessage:
			[image ifNotNil: [self setContents].
			self stopStepping.
			aBlock value]
	] forkAt: Processor userBackgroundPriority