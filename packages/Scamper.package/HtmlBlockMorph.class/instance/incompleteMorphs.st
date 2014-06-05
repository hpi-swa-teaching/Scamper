accessing
incompleteMorphs
	| incompleteMorphs |
	incompleteMorphs := OrderedCollection new.
	self children do: [:child | incompleteMorphs addAll: child incompleteMorphs ].
	^incompleteMorphs.