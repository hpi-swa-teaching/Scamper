getting styles
getHeightWidthFrom: aResolver

	aResolver ifStyleNotNil: 'height' do: [ :h | self height: h ];
		ifStyleNotNil: 'width' do: [ :w| self width: w ].