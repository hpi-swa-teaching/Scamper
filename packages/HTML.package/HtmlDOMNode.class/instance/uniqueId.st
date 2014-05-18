accessing
uniqueId

	^(self parent uniqueId, '.', ((self parent children indexOf: self) asString))