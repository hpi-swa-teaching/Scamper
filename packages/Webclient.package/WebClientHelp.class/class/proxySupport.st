pages
proxySupport
	"This method was automatically generated. Edit it using:"
	"WebClientHelp edit: #proxySupport"
	^HelpTopic
		title: 'Proxy Support'
		contents: 
'WebClient supports connecting via http proxies, including authenticating proxies. WebClient delegates proxy detection to its ProxyHandler which is responsible for performing the proper actions. Proxy authentication is handled in a similar way as regular authentication. The defaults are implemented in WebUtils.
!' readStream nextChunkText