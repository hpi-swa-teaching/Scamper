private-initialization
initialize: source0
	super initialize: source0.
	self text: source0 replaceHtmlCharRefs.