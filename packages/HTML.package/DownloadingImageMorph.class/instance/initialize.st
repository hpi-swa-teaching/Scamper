as yet unclassified
initialize
	super initialize.

	altText := '[image]'.
	self color: Color transparent.
	downloadQueue := SharedQueue new.