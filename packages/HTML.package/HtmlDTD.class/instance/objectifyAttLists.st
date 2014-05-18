private
objectifyAttLists

	attLists := attLists collect: [:ea | HtmlDTDAttrList fromParsedArray: ea]