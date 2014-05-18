actions
parse

	| in |
	
	in := ReadStream on: self content.
	self dom: (HtmlDocument new loader: self loader;
			requestUrl: self url; 
			responseUrl: (self document isNil ifTrue: [nil] ifFalse: [self document url]); 
			parseContents: in)
