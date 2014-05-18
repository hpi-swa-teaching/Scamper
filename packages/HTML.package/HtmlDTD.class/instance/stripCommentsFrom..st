private
stripCommentsFrom: aString

	| in out |

	in := ReadStream on: aString.
	out := WriteStream on: (String new: aString size).

	[in atEnd] whileFalse:
	[
		out nextPutAll: (in upToAll: '--').
		in upToAll: '--'.
	].
	^out contents