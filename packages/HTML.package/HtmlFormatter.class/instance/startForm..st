forms
startForm: form
	"a form is beginning"
	self ensureNewlines: 1.
	formDatas addLast: (FormInputSet forForm: form  andBrowser: browser).