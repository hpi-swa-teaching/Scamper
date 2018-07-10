accessing
applyBorderWidthFrom: aResolver

	aResolver ifStyleNotNil: 'borderWidth-top' do: [ :borderWidth | self borderWidthTop: borderWidth ];
		ifStyleNotNil: 'borderWidth-right' do: [ :borderWidth | self borderWidthRight: borderWidth ];
		ifStyleNotNil: 'borderWidth-bottom' do: [ :borderWidth | self borderWidthBottom: borderWidth ];
		ifStyleNotNil: 'borderWidth-left' do: [ :borderWidth | self borderWidthLeft: borderWidth ].