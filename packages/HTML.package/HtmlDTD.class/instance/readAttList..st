actions
readAttList: aStream

	| s list |

	list := OrderedCollection new.
	s := (aStream upTo: $>) trimBoth findTokens: Character separators.

	list add: s first.
	s := s copyWithoutFirst joinOn: ' '.
	list add: (self stripCommentsFrom: s).
	self addToAttLists: list asArray.