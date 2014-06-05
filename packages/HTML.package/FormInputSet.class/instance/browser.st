accessing
browser
	"get the browser object TextURL-style"
	htmlMorph ifNotNil: [ :m |
		[ m ~= nil ] whileTrue: [
			(m hasProperty: #webBrowserView) ifTrue: [ ^ m model ].
		  m := m owner ]].
	^ nil