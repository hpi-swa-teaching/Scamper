as yet unclassified
updateTab
	
	self tabs ifNil: [self initializeTabs].
	self tabs at: self currentTab put: self createTab.