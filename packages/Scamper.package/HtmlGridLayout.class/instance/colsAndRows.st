layout
colsAndRows
	|x y  xtot ytot |

	xtot := 0.
	ytot := 0.
	
	" 1ere passe calcul du total"
	cols do: [ :c | xtot := xtot + c width ].
	rows do: [ :r | ytot := ytot + r height ].
	
	" compute ratios based on initial widths & heights"
	x := 0.
	cols do: [ :c | 
		c start: (x = 0 ifTrue: [ 0 ] ifFalse: [ 1 / (xtot / x) ]).
		c ratio: (1 / (xtot / c width)).
		x := x + c width.
	].
	y := 0.
	rows do: [ :r | 
		r start: (y = 0 ifTrue: [ 0 ] ifFalse: [ 1 / (ytot / y) ]).
		r ratio: (1 / (ytot / r height)).
		y := y + r height.
	].

