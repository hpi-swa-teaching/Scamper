changing page
jumpToUrlAsync: urlText
	"start downloading a new page. The page source is downloaded in a background thread"
	
	Transcript showln: 'Test'.
	Transcript showln: (urlText asUrlRelativeTo: currentUrl).
	Transcript showln: 'Test'.
	^ self jumpToAbsoluteUrlAsync: (urlText asUrlRelativeTo: currentUrl).
	"^ self jumpToAbsoluteUrlAsync: (currentUrl,'/' asString , urlText)."