accessing
fontMap
"I replace some fonts with licence issues by free alternatives and set a mapping for generic font families such as serif or monospace."
	^ fontMap ifNil: [ Dictionary newFrom: {
			'serif' -> 'NimbusRomanNo9L'.
			'Times' -> 'NimbusRomanNo9L'.
			'Times New Roman' -> 'NimbusRomanNo9L'.
			'Nimbus Roman No9 L' -> 'NimbusRomanNo9L'.
			'sans-serif' -> 'NimbusSansL'.
			'Arial' -> 'NimbusSansL'.
			'Helvetica' -> 'NimbusSansL'.
			'Nimbus Sans L' -> 'NimbusSansL'.
			'fantasy' -> 'ComicSansMS'.
			'Comic Sans MS' -> 'ComicSansMS'.
			'cursive' -> 'URWChanceryL'.
			'URW Chancery L' -> 'URWChanceryL'.
			'monospace' -> 'NimbusMonoL'.
			'Courier New' -> 'NimbusMonoL'.
			'Nimbus Mono L' -> 'NimbusMonoL'.
			'Trebuchet MS' -> 'TrebuchetMS'.
			'Andale Mono' -> 'AndaleMono'.
		}]