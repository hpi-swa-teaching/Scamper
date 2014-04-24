lint
hasLint
	"whether the current page has any questionable HTML in it"
	document ifNil: [ ^false ].
	^document lint ~= ''