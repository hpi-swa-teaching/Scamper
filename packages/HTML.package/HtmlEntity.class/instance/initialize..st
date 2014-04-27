private-initialization
initialize: aTag
	self initialize.
	attribs := HtmlAttributes newFrom: aTag attribs.