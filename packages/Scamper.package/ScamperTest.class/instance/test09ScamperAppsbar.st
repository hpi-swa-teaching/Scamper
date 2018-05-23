initialize-release
test09ScamperAppsbar 

	| test |
	
	test := TheWorldMenu registeredOpenCommands.
	test isKindOf: Collection.
	self assert: 
		(test contains: [ :each| each = {'Scamper' . {Scamper . #open}} ]).