layout
preferredMinimumWidth
	| resolver ownWidth childrenWidth |
	self node ifNil: [ ^ #auto ].
	
	resolver := CSSStyleResolver for: node.

	"TODO: add support for intrinsic widths of replaced elements here"
	"add margins and paddings and border-widths here"
	resolver ifStyleNotNil: #absoluteWidth
					do: [:value | ownWidth := value ] ifNil: [ ^ ownWidth := #auto ].

	childrenWidth := (self submorphs 
		collect: [ :morph | morph preferredMinimumWidth ]
		thenSelect: [ :width | width ~= #auto ])
		ifNotEmpty: [ :widths | widths max ] ifEmpty: [ #auto ].
		
	(ownWidth == #auto)
		ifTrue: [ ^ childrenWidth ]
		ifFalse: [ ^ ownWidth ]