private-initialization
initialize: aTag
	super initialize: aTag.
	level := aTag name last digitValue.