forms
currentFormData
	"return the current form data, or nil if we aren't inside a form"
	formDatas size > 0 
		ifTrue: [ ^formDatas last ]
		ifFalse: [ ^nil ].