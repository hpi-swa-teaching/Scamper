accessing
cssErrors

	| list |
	list := OrderedCollection new.
	self stylesheets do:
	[:ss |
		list addAll: (ss allErrorsMatching: [:ea | ea isCSSError])
	].
	^list asArray