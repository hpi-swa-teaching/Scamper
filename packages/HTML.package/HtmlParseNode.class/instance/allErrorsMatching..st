accessing
allErrorsMatching: aBlock

	| errs |

	errs := OrderedCollection new.

	self nodesDo: [:ea | ea errors do:[:er | (aBlock value: er) ifTrue: [errs add: er]]].

	^errs asArray