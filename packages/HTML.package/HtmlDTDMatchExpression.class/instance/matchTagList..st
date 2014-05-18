matching
matchTagList: aList

	| in |

	in := ReadStream on: aList.
	self match: in.
	^in upToEnd