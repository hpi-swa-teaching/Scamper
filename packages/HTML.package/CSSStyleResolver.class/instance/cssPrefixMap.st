formatter-resolution
cssPrefixMap
	^ cssPrefixMap ifNil: [
		| sizeFormatter |
		sizeFormatter := CSSSizeFormatter new.
		cssPrefixMap := Dictionary newFrom: {
			'font' -> CSSFontFormatter new.
			'text' -> CSSTextFormatter new.
			'color' -> CSSColorFormatter new.
			'display' -> CSSDisplayFormatter new.
			'list' -> CSSListFormatter new.
			'background' -> CSSBackgroundFormatter new.
			'height' -> sizeFormatter.
			'width' -> sizeFormatter.
		}]