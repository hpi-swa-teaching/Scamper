applying styles
apply
	
	self height ifNotNilDo: [:h | self htmlMorph height: h].
	self width ifNotNilDo: [:w | self htmlMorph setWidth:w].
	self htmlMorph borderColor: Color red.
	
	