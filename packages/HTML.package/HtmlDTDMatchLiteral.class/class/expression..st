instance creation
expression: aTag

	LiteralsByTagAsSymbol isNil ifTrue: [LiteralsByTagAsSymbol := WeakValueDictionary new].

	^LiteralsByTagAsSymbol at: aTag asSymbol ifAbsentPut: [self new expression: aTag].	