changing page
jumpToUrl: urlText
	"start downloading a new page.  The page source is downloaded in a background thread"
	self jumpToAbsoluteUrl: (urlText asUrlRelativeTo: currentUrl)
