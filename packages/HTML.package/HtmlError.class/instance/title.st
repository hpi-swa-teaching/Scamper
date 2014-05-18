accessing
title

	| tt |
	tt := self class name. 
	^(tt last: tt size - 4) asCapitalizedPhrase.
	