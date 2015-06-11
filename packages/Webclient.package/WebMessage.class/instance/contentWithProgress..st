accessing
contentWithProgress: progressBlock
	"Reads and caches available content and returns it."

	^content ifNil: [ content := self getContentWithProgress: progressBlock ]