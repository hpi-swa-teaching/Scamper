accessing
applyPaddingFrom: aResolver

	aResolver ifStyleNotNil: 'padding-top' do: [ :padding | self paddingTop: padding ];
		ifStyleNotNil: 'padding-right' do: [ :padding | self paddingRight: padding ];
		ifStyleNotNil: 'padding-bottom' do: [ :padding | self paddingBottom: padding ];
		ifStyleNotNil: 'padding-left' do: [ :padding | self paddingLeft: padding ].