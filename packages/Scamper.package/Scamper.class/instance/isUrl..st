testing
isUrl: aUrl

	^('http://*' match: aUrl asString) or: ['https://*' match: aUrl asString].