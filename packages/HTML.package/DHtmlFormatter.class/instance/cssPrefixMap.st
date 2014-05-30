accessing
cssPrefixMap
	^ cssPrefixMap ifNil: [
		Dictionary newFrom: {
			'font' -> CSSFontFormatter new.
			'color' -> CSSColorFormatter new
		}]