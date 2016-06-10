tabs
openTab: anIndex
	
	(self tabs includes: self createTab) ifFalse: [self addTab].
	self webContentsPane show: ((self tabs at: anIndex) at: 1).
	self document: ((self tabs at: anIndex) at: 1).
	
	