initialization
menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder item: #'Scamper')
			parent: #Tools;
			action:[self new openAsMorph]; 
			help: 'Scamper Web Browser'.