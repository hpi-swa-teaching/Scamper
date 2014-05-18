as yet unclassified
step
	| doc |
	downloadQueue size > 0 ifTrue: [
		doc := downloadQueue next.
		(doc notNil and: [doc mainType = 'image'])
		ifTrue: [
			[image := ImageReadWriter  formFromStream: doc contentStream binary]
				ifError: [:err :rcvr | "ignore" image := nil].
			self setContents ] ].