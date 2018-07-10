accessing
applyBorderWidthFrom: aResolver

	aResolver ifStyleNotNil: 'border-width-top' do: [ :borderWidth | self borderWidthTop: borderWidth ];
		ifStyleNotNil: 'border-width-right' do: [ :borderWidth | self borderWidthRight: borderWidth ];
		ifStyleNotNil: 'border-width-bottom' do: [ :borderWidth | self borderWidthBottom: borderWidth ];
		ifStyleNotNil: 'border-width-left' do: [ :borderWidth | self borderWidthLeft: borderWidth ].