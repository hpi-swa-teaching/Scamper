as yet unclassified
test03DocumentWithoutTitleTagShouldntRaiseErrors
	| document |

	document := HtmlDocument new parseContents: (ReadStream on: 'No title here').
	self shouldnt: [Scamper new titleOf: document] raise: Error.