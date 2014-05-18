instance creation
readFrom: in

	| out pos |

	pos := in position.
	out := WriteStream on: String new.
	in skipSeparators.
	(in peek = $') ifTrue: 
	[
		in next.
		[in peek = $'] whileFalse: 
		[
			in peek = $\ ifTrue: [in next].
			out nextPut: in next
		]
	] 
	ifFalse: "better be a double quote"
	[
		in peek = $" ifTrue:
		[
			in next.
			[in peek = $"] whileFalse: 
			[
				in peek = $\ ifTrue: [in next].
				out nextPut: in next
			].
			in next. "Clear the trailing quote"
		]
		ifFalse:
		[
			| seps |
			seps := (Character separators, ',;/').
			[in atEnd or: [seps includes: in peek]]whileFalse: [out nextPut: in next]
		]
	].
	(CSSGenericFamilyValue new valueString: out contents asLowercase) isValid 
		ifTrue: [in position: pos. ^nil].

	^out contents size > 0 
		ifTrue: [self new valueString: out contents] 
		ifFalse: [in position: pos. nil]