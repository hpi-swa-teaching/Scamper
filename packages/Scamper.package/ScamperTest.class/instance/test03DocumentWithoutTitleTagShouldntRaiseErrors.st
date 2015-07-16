initialize-release
test03DocumentWithoutTitleTagShouldntRaiseErrors
	| document |
	Transcript show: 'test03'.
	document := HtmlDocument new parseContents: (ReadStream on: 'No title here').
	self shouldnt: [Scamper new titleOf: document] raise: Error.