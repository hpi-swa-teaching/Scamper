class initialization
initialize

	"HtmlUnescapedSpecialCharacterError initialize"

	CharactersToEntities := Dictionary new. 

	CharactersToEntities 
		at: $< put: '&lt;';
		at: $> put: '&gt;';
		at: $& put: '&amp;'.

	SpecialCharacters := CharactersToEntities keys