as yet unclassified
isValid

	^(self valueString beginsWith: 'attr(') and: [self valueString endsWith: ')']