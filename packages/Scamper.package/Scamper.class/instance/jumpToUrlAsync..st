changing page
jumpToUrlAsync: urlText
	"start downloading a new page.  The page source is downloaded in a background thread"
	^ self jumpToAbsoluteUrlAsync: (urlText asUrlRelativeTo: currentUrl)