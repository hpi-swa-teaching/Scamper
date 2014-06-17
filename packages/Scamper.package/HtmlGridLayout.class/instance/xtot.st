initialize-release
xtot
	| xtot |
	xtot := 0.
	cols do: [ :c | xtot := xtot + c width ].
	^xtot