as yet unclassified
fromParsedString: aString

	| in tag start end contents |

	in := ReadStream on: aString.

	tag := self readExpression: in.
	start := self readExpression: in.
	end := self readExpression: in.
	contents := in upToEnd trimBoth.

	^self new tag: tag;
		startIsOptional: start;
		endIsOptional: end;
		contentRule: contents		