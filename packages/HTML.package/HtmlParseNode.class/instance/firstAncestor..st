accessing
firstAncestor: aString

	| p |

	p := self parent.
	[p notNil] whileTrue: [p tag = aString ifTrue: [^p]. p := p parent].
	^p

	