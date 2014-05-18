private
objectifyElements

	elements := elements collect: [:ea | XHtmlDTDElement fromParsedString: ea]