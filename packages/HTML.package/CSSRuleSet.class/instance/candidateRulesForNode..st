accessing
candidateRulesForNode: aNode

	| id classes list |

	id := aNode id.
	list := OrderedCollection new.
	list addAll: otherSelectors.
	aNode id isNil ifFalse:
	[
		list addAll: (idSelectors at: id ifAbsent:[#()]).
	].
	classes := aNode classes.
	(classes isNil or: [classes isEmpty]) ifFalse:
	[
		classes do: [:ea | list addAll: (classSelectors at: ea ifAbsent: [#()])]. 
	].
	list addAll: (tagSelectors at: aNode tag asLowercase ifAbsent: [#()]).
	^list