menus
addNewSubMenu: aDictionary 
	| subMenu url sub |
	subMenu := MenuMorph new.
	aDictionary
		keysAndValuesDo: 
			[:name :value | 
			url := value.
			(url isKindOf: Dictionary)
				ifTrue: 
					[sub := self addNewSubMenu: url.
					subMenu add: name subMenu: sub]
				ifFalse: [subMenu
						add: name
						target: self
						selector: #jumpToUrlAsync:
						argument: url]].
	^ subMenu.