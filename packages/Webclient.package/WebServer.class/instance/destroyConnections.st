initialize
destroyConnections
	"Destroy all current connections."

	| copy |
	copy := mutex critical: [ connections copy ].
	" #terminate will trigger the #ensure: block in #asyncHandleConnectionFrom:, which will block if we don't release the mutex "
	copy do: [ :p | p terminate ].
	" make sure all of them were really removed "
	mutex critical: [ connections removeAll ]
