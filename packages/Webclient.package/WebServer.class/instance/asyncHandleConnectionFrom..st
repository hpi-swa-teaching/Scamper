handling
asyncHandleConnectionFrom: aSocket
	"Handle an incoming connection asynchronously to avoid blocking the listener."

	| handlerProcess |
	handlerProcess := [
		[ [ self handleConnectionFrom: aSocket ] 
			on: Error do: [ :ex | aSocket destroy ] ]
			ensure: [
				aSocket destroy.
				mutex critical: [ 
					"If we get here, then handlerProcess is initialized, so it's safe to use that variable. Using Processor activeProcess is not possible, because this block may be evaluated by another process. Doing this outside the #ensure: block is not safe."
					connections remove: handlerProcess ifAbsent: [ ] ] ] ] newProcess.

	mutex critical:[connections add: handlerProcess].

	handlerProcess resume.
