changing page
jumpToUrl: urlText
	"this method is called by the framework on web browsers - therefore don't block"
	self jumpToAbsoluteUrlAsync: (urlText asUrlRelativeTo: currentUrl)
