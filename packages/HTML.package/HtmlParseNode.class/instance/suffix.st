accessing
suffix

	| in theStart |

	in := ReadStream on: self content.

	theStart := self children isEmpty ifTrue:[self end] ifFalse:[self children last end].
	in position: theStart.	
	^in next: (0 max: (self end - theStart))