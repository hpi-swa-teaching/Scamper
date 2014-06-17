layout
layoutRowsIn: newBounds

	|  height y h hsup n |

	height := newBounds height.
	" calcul des hauteurs"
	y := 0.
	rows do: [ :r |
		h := (height * (r ratio)) asInteger.
		h < r min ifTrue: [ h := r min ].
		h > r max ifTrue: [ h := r max ].
		r y: y ; height: h.
		y := y + h.
	].
	" si les contr*·les n'occupent pas tte la hauteur, r*©partir"
	y < height ifTrue: [
		[ n := (rows select: [ :r | r height < r max ]) size.
		 (y < height) and: [n > 0]] whileTrue: [
			hsup := ((height - y ) / n) asInteger.
			hsup <= 0 ifTrue: [ hsup := 1 ].
			y := 0.
			rows do: [ :r |
				h := r height.
				((y + h < height) and: [ h < r max ]) ifTrue: [
					h := h + hsup.
					h > r max ifTrue: [ h := r max ].					
				].
				r y: y ; height: h.
				y := y + h.
			].
		].
	].
