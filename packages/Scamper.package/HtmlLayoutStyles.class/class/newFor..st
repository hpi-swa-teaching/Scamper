instance creation
newFor: aHtmlMorph

	| new |
	new := HtmlLayoutStyles new. 
	new htmlMorph: aHtmlMorph.
	^new