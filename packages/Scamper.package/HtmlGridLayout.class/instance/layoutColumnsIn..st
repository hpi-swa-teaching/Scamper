layout
layoutColumnsIn: newBounds
	|  width x w n wsup |

	width := newBounds width.
	
	"1st compute width based on ratio"
	x := 0.
	cols do: [ :c |
		w := (width * (c ratio)) asInteger.
		w < (c min) ifTrue: [ w := c min ].
		w > (c max) ifTrue: [ w := c max ].
		c x: x ; width: w.
		x := x + w.
	].
	" if not enough, iterate until done or no more resizable columns"
	x < width ifTrue: [
		[ n := (cols select: [ :c | c width < c max ]) size.
		 (x < width) and: [n > 0]] whileTrue: [
			wsup := ((width - x ) / n) asInteger.
			wsup <= 0 ifTrue: [ wsup := 1 ].
			x := 0.
			cols do: [ :c |
				w := c width.
				((x + w < width) and: [ w < c max ]) ifTrue: [
					w := w + wsup.
					w > c max ifTrue: [ w := c max ].					
				].
				c x: x ; width: w.
				x := x + w.
			].
		].
	].

