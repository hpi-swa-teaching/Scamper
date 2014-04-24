accessing
at: key put: anObject
	self attributes ifNil: [self attributes: (HtmlAttributes new)].
	(self attributes) at: key put: anObject