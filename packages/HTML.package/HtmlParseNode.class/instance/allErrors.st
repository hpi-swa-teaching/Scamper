accessing
allErrors

	| collection |

	self errors do:[:ea | ea position isNil ifTrue: [ea position: self start]].
	collection := OrderedCollection new.
	collection addAll: (self errors).
	self children do:[:ea | collection addAll: ea allErrors].
	^collection asArray