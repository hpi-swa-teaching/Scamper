initialize-release
ytot
	| ytot |
	ytot := 0.
	rows do: [ :r | ytot := ytot + r height ].
	^ytot