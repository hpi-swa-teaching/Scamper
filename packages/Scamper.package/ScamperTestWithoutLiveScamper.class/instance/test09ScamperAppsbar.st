testing
test09ScamperAppsbar 

	| appList |
	
	Scamper install.
	appList := TheWorldMenu registeredOpenCommands.
	self assert: 
		(appList contains: [ :each| each = {'Scamper' . {Scamper . #open}} ]).