layout
cssSize
	| size resolver |
	size := 0@0.
	self node ifNil: [ ^ size ].
	
	resolver := CSSStyleResolver for: node.
	resolver ifStyleNotNil: #width do: [:value | size := size + (value @ 0) ].
 	resolver ifStyleNotNil: #height do: [:value | size := size + (0 @ value) ].
	
	^ size