pages
cookieSupport
	"This method was automatically generated. Edit it using:"
	"WebClientHelp edit: #cookieSupport"
	^HelpTopic
		title: 'Cookie Support'
		contents: 
'WebClient supports session cookies. Cookies are preserved within one WebClient session but not across multiple session (cookies can be copied or shared between WebClients which makes it easy to support where needed). Support for cookies can be disabled via WebClient''s #acceptCookies: property.
!' readStream nextChunkText