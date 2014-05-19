instance creation
readFrom: in

	| cls |

	cls := self forType: in peek.
	^cls isSimple 
		ifTrue: [in next. cls new]
		ifFalse: [cls readFrom: in]