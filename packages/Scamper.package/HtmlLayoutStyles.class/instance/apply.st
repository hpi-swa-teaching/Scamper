applying styles
apply
	"modify the morph to fit to the styles. padding, borderwidth, bordercolor..."
	
	self height ifNotNilDo: [:h | self htmlMorph height: h].
	self width ifNotNilDo: [:w | self htmlMorph setWidth:w].
	
	