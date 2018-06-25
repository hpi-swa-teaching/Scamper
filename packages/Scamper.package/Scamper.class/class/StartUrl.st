initialization
StartUrl
	"The default URL to start from"

	<preference: 'Homepage'
		category: 'scamper'
		description: 'The home URL for scamper'
		type: #String>

	^StartUrl ifNil:['']