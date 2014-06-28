font parameters
fontSizeFactorMap
"I provide values to scale fonts to a correct display size."
	^ fontSizeFactorMap ifNil:
		[ Dictionary newFrom: {
			'NimbusRomanNo9L' -> 1.25.
			'NimbusSansL' -> 1.25.
			'ComicSansMS' -> 1.3.
			'URWChanceryL' -> 1.3.
			'NimbusMonoL' -> 1.25.
			'TrebuchetMS' -> 1.2.
			'AndaleMono' -> 1.2.
			'Georgia' -> 1.15.
			'Verdana' -> 1.25.
			'Webdings' -> 1.07.
		}]