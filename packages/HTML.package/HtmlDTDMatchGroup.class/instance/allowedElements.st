as yet unclassified
allowedElements

	| collection |

	collection := OrderedCollection new.

	expression do: [:ea | collection addAll: ea allowedElements].

	^collection asArray