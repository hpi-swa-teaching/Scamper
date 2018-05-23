initialize-release
test09ScamperAppsbar 

	| test |
	
	Scamper install.
	test := TheWorldMenu registeredOpenCommands.
	test isKindOf: Collection.
	self assert: 
		(test contains: [ :each| each = {'Scamper' . {Scamper . #open}} ]).