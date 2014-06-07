rendering
addToFormatter: aFormatter
	self children do: [:e | e addToFormatter: aFormatter ]