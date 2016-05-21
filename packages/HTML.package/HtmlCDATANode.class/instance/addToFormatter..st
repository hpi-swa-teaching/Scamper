accessing
addToFormatter: aFormatter

	self parent 
		ifNil: [ aFormatter addString: self innerContents ]
		ifNotNil: [ :parent |
			[
				aFormatter startStyles: self parent.
				 (Exception new messageText: 'An error occured. Probably the strings are missing. Try this workaround: https://github.com/HPI-SWA-Teaching/SWT15-Project-05-merged/issues/1') signal
			]
			on: Exception 
  			do: [:x| Transcript show: x messageText ]. 
			aFormatter addString: self innerContents.
			aFormatter endStyles ]