instance creation
newOrExistingOn: aStringOrUrl
	| aUrl siteStr |
	"If a Scamper is open on the same site, return its SystemWindow, else return a new Scamper."

aUrl := aStringOrUrl asUrl.
siteStr := aUrl schemeName, '://', aUrl authority.

Smalltalk isMorphic ifTrue: [
	World submorphsDo: [:m | 
		((m isKindOf: SystemWindow) and: [m model isKindOf: Scamper]) ifTrue: [
			(m model currentUrl asString beginsWith: siteStr) ifTrue: [
					m expand.
					^ m]]]].

^ self new openAsMorph
