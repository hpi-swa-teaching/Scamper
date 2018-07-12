accessing
applyBorderWidthFrom: aResolver

	aResolver ifStyleNotNil: 'border-top-width' do: [ :borderWidth | self borderWidthTop: borderWidth ];
		ifStyleNotNil: 'border-right-width' do: [ :borderWidth | self borderWidthRight: borderWidth ];
		ifStyleNotNil: 'border-bottom-width' do: [ :borderWidth | self borderWidthBottom: borderWidth ];
		ifStyleNotNil: 'border-left-width' do: [ :borderWidth | self borderWidthLeft: borderWidth ].