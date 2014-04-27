initialization
initialize
	"HtmlTokenizer initialize"

	CSAttributeEnders := CharacterSet empty.
	CSAttributeEnders addAll: Character separators.
	CSAttributeEnders add: $>.
	
	CSNameEnders := CharacterSet empty.
	CSNameEnders addAll: '=>'.
	CSNameEnders addAll: Character separators.

	CSNonSeparators := CharacterSet separators complement.