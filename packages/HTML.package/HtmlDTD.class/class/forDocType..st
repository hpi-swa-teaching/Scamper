as yet unclassified
forDocType: aDocType

	| dt delims |

	delims := (Character separators copyWith: $<) copyWith: $>.

	dt := aDocType copyWithoutAll: delims.

	Cache isNil ifTrue: [Cache := Dictionary new].

	^Cache at: dt ifAbsentPut: 
	[ 
		(self allSubclasses
			detect: [:ea | (ea docType copyWithoutAll: delims) = dt] 
			ifNone: [Html401Strict]) new.
	]