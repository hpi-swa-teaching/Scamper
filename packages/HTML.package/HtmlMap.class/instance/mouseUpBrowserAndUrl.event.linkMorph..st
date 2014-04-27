morphic
mouseUpBrowserAndUrl: browserAndUrl event: event linkMorph: linkMorph
	"this is an image map area, just follow the link"
	| browser url |
	browser := browserAndUrl first.
	url := browserAndUrl second.
	browser jumpToUrl: url