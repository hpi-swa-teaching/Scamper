accessing
validTypeExpression

	| p attList attr |

	p := self parent.
	attList := p dtd attrListForTag: p dtdTag.
	attr := attList attributeNamed: self attribute.
	^ attr type expression asString