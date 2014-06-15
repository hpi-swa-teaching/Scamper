accessing
imageExtent
	"the image extent, according to the WIDTH and HEIGHT attributes.  returns nil if either WIDTH or HEIGHT is not specified"
	| widthText heightText |
	widthText := self attributes at: 'width' ifAbsent: [ ^nil ].
	heightText := self attributes at: 'height' ifAbsent: [ ^nil ].
	^ [ widthText asNumber @ heightText asNumber ] ifError: [ :a :b | nil ]