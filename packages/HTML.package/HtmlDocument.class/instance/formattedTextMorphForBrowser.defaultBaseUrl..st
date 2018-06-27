formatting
formattedTextMorphForBrowser: browser  defaultBaseUrl: defaultBaseUrl
	"return a version of this document as a formatted TextMorph (which includes links and such)"
	| formatter textMorph |

	"set up the formatter"
	formatter := HtmlFormatter preferredFormatterClass new.
	formatter browser: browser.
	formatter baseUrl: defaultBaseUrl.  "should check if the document specifies something else"

	"do the formatting"
	self addToFormatter: formatter.

	"get and return the result"
	textMorph := formatter textMorph .
	^textMorph