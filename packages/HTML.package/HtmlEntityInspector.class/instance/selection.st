selecting
selection
	selectionIndex = self fieldList size 
		ifTrue: [^object asHtml]
		ifFalse: [^super selection]