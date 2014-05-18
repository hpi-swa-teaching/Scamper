private
objectifyElements

	elements := elements collect: [:ea | HtmlDTDElement fromParsedString: ea].
	elements do: [:ea | ea cacheAllowedElementsForDTD: self].