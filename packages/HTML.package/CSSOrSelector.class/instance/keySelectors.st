accessing
keySelectors

	| list |

	list := OrderedCollection new.
	self selectors do: [:ea | list addAll: ea keySelectors].
	^list