accessing
loadStyles

	| doc |

	doc := (self url asUrlRelativeTo: self document requestUrl asUrl) retrieveContents.
	self 
		content: doc content; 
		start: 0; 
		end: doc content size.
	self parseContents: (ReadStream on: self content).