menus
viewSource
	"view the source HTML of this page"
	(StringHolder new contents: (pageSource withSqueakLineEndings)) openLabel: ('source for {1}' translated format: {currentUrl printString}).