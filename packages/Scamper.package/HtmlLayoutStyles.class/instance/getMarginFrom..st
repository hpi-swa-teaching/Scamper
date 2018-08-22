getting styles
getMarginFrom: aResolver

	aResolver ifStyleNotNil: 'margin-top' do: [ :margin | self marginTop: margin ];
		ifStyleNotNil: 'margin-right' do: [ :margin | self marginRight: margin ];
		ifStyleNotNil: 'margin-bottom' do: [ :margin | self marginBottom: margin ];
		ifStyleNotNil: 'margin-left' do: [ :margin | self marginLeft: margin ].