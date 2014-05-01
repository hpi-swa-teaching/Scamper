subscribing
subscribeOnUIThread

	self subject ifNotNil: [ WorldState addDeferredUIMessage: [ subject addDependent: self ] ]