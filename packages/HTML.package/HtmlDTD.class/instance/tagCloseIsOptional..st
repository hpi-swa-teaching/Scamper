testing
tagCloseIsOptional: aTag

	| element |

	element := self elementForTag: aTag.
	^element isNil 
		ifTrue:[false] 
		ifFalse:[element endIsOptional]