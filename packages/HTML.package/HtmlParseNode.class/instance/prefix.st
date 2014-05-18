accessing
prefix

	| in theEnd |

	in := ReadStream on: self content.
	in position: self start.	
	theEnd := self children isEmpty ifTrue:[self end] ifFalse:[self children first start].

	^in next: (theEnd - self start)