initialize
initialize
	"HtmlEmbedded initialize"
	ExtensionList := Dictionary new.
	#(
		"Plugins for embedded HTML elements should be registered here in the form:"
		"('type'	MorphClassName)"
	) do:[:spec| ExtensionList at: spec first put: spec last].