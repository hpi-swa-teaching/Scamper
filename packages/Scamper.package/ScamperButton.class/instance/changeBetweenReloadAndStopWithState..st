as yet unclassified
changeBetweenReloadAndStopWithState: aState

	| browserState |
	
	browserState := aState asString.

	(browserState = 'done.' | browserState = 'sittin')
		ifTrue: [
				^ self 
					selfChangeAction: #reload 
					Icon: ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconRefresh) fullName)) 
					labelInfo: 'Reload'
				].
			
	(browserState match: 'downloading')
		ifTrue: [
				^ self 
					selfChangeAction: #stopEverything  
					Icon: ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconCancel) fullName)) 
					labelInfo: 'Cancel'
				].
			
	(browserState = 'parsing')
		ifTrue: [
				^ self 
					selfChangeAction: #stopEverything  
					Icon: ((ImageReadWriter formFromFileNamed:  (FileDirectory uri: self iconCancel) fullName)) 
					labelInfo: 'Cancel'
				].