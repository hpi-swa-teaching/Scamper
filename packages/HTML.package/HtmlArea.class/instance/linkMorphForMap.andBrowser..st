formatting
linkMorphForMap: map andBrowser: browser
	| m |
	(m := self buildMorph) ifNil: [^nil].
	m color: (Color random alpha: 0.1). "hack to ensure the morph is clickable"
	m
		on: #mouseUp
		send: #mouseUpBrowserAndUrl:event:linkMorph:
		to: map
		withValue: {browser. self href}.
	^m