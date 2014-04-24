morphic
mouseUpEvent: arg1 linkMorph: arg2 formData: arg3
	"Reorder the arguments for existing event handlers"
	(arg3 isMorph and:[arg3 eventHandler notNil]) ifTrue:[arg3 eventHandler fixReversedValueMessages].
	^self mouseUpFormData: arg1 event: arg2 linkMorph: arg3