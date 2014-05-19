actions
validate

	| dtd |
	
	self parse.
	self checkHtmlHeadBody.
	dtd := HtmlDTD forDocType: self dom docType.
	self dom applyStyles.
	self validateAgainstDTD: dtd.
	self validateCSSImports.
	self validateCSSAgainstDTD: dtd