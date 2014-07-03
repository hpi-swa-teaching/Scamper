layout
cssHeight

	| resolver |
	self node ifNil: [ ^ 0 ].
	
	resolver := CSSStyleResolver for: node.
 	^ resolver ifStyleNotNil: #height do: [:value | value ] ifNil: [ 0 ]