formatter-resolution
cssPrefixMap
	^ cssPrefixMap ifNil: [
		cssPrefixMap := Dictionary newFrom: {
			'font' -> CSSFontFormatter new.
			'color' -> CSSColorFormatter new.
			'display' -> CSSDisplayFormatter new.
			'background' -> CSSBackgroundFormatter new.
		}]