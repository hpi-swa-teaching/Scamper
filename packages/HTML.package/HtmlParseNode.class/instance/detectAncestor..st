accessing
detectAncestor: aBlock

	| p |

	p := self.
	[p notNil] whileTrue: [(aBlock value: p) ifTrue: [^p]. p := p parent].
	^p

	