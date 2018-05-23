initialize-release
test09ScamperAppsbar 

	| appList |
	
	Scamper install.
	appList := TheWorldMenu registeredOpenCommands.
	appList isKindOf: Collection.
	self assert: 
		(appList contains: [ :each| each = {'Scamper' . {Scamper . #open}} ]).