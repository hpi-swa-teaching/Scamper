accessing
cssPrefixMap
	^ cssPrefixMap ifNil: [
		cssPrefixMap := Dictionary newFrom: {
			'font' -> CSSFontFormatter new.
			'color' -> CSSColorFormatter new
		}]