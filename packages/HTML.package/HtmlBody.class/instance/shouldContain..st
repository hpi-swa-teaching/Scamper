lint
shouldContain: anEntity
	"I don't *think* there are any elements that can be in both the header and the body..."
	^anEntity isHeadElement not