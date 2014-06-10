accessing
rawContent

	| in |

	in := ReadStream on: self document content.
	in position: self start.	
	^ (in next: (self end - self start)) asUnHtml