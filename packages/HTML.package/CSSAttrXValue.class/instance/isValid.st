accessing
isValid

	^(self valueString beginsWith: 'attr(') and: [self valueString endsWith: ')']