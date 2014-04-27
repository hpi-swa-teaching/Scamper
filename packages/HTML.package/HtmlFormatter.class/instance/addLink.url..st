formatting commands
addLink: text  url: url
	"add a link with the given url and text"
	| savedAttributes linkAttribute  |

	"set up the link attribute"
	linkAttribute := TextURL new.
	linkAttribute url: url.

	"add the link to the stream"
	savedAttributes := outputStream currentAttributes.
	outputStream currentAttributes: (savedAttributes, linkAttribute).
	outputStream nextPutAll: text.
	outputStream currentAttributes: savedAttributes.

	"reset counters"
	precedingSpaces := precedingNewlines := 0.