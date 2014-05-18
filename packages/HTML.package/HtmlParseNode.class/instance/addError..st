accessing
addError: anError

	anError parent: self.
	self errors: (self errors copyWith: anError)