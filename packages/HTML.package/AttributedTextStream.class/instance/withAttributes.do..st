accessing
withAttributes: attributes do: aBlock

	| previousAttributes |
	previousAttributes := currentAttributes.
	[
		self currentAttributes: attributes.
		aBlock value ]
			ensure: [ self currentAttributes: previousAttributes ]