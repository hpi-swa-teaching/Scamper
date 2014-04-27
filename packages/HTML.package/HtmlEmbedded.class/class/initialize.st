initialize
initialize
	"HtmlEmbedded initialize"
	ExtensionList := Dictionary new.
	#(
		('swf'	FlashPlayerMorph)
	) do:[:spec| ExtensionList at: spec first put: spec last].