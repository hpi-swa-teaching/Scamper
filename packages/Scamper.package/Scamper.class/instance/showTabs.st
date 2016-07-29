tabs
showTabs
	| menu |
	menu := (MenuMorph entitled: ' Tabs ' translated)
				defaultTarget: self.
	menu addStayUpItem.
	menu addLine.
	menu
		add: 'New Tab' translated
		target: self
		selector: #openNewTab.
	menu addLine.
	self tabs ifNotNil: [ self tabs do: [:a | 
		menu
			add: (a at: 2) translated
			target: self
			selector: #openTab: 
			argument: (self tabs indexOf: a)]].
	menu addLine.
	menu
		add: 'Close All Tabs' translated
		target: self
		selector: #closeAllTabs.
	menu popUpInWorld: self currentWorld