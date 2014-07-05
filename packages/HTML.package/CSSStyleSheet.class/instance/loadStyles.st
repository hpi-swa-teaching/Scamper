accessing
loadStyles

	| doc |

	doc := self absoluteUrl retrieveContents.
	self 
		content: doc content; 
		start: 0; 
		end: doc content size.
	self parseContents: (ReadStream on: self content).