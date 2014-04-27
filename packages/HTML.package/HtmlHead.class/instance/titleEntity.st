metainformation
titleEntity
	"return the title entity, or nil if there isn't one"
	contents do: [ :e | e tagName = 'title' ifTrue: [ ^e ] ].
	^nil