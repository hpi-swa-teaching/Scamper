tabs
openTab: anIndex
	
	self updateTab.
	self currentTab: anIndex.
	self webContentsPane show: ((self tabs at: anIndex) at: 1).
	self document: ((self tabs at: anIndex) at: 1).
	
	