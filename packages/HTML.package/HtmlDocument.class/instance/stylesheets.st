accessing
stylesheets

	| stylesheets |

	stylesheets := OrderedCollection new.

	self nodesDo:
	[:ea |
		((ea respondsTo: #stylesheet)and:[ea stylesheet notNil]) 
			ifTrue: [stylesheets add: ea stylesheet].
	].
	^stylesheets
	