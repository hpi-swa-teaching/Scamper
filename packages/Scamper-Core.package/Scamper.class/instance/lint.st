lint
lint
	"return a string describing any questionable HTML that was noticed in the current page"
	"(not currently very comprehensive)"
	document ifNil: [ ^'' ].
	^document lint