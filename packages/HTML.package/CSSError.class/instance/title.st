as yet unclassified
title

	| tt |
	tt := self class name. 
	^(tt last: tt size - 3) asCapitalizedPhrase.
	