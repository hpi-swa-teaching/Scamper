actions
validateCSSImports

	| ss styleFound |
	ss := dom stylesheets.
	ss do:
	[:ea |
		styleFound := false.
		ea children do:
		[:rule |
			styleFound ifFalse:
			[
				rule isStyleRule ifTrue:[ styleFound := true]
			]
			ifTrue:
			[
				rule isAtImportRule ifTrue:
				[
					rule addError: (CSSImportAfterStyleRuleError new)
				]
			]
		]


	]
