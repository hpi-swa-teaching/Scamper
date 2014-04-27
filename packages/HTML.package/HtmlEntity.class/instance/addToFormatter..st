formatting
addToFormatter: aFormatter
	"by default, just format our childer"
	contents do: [ :e | e addToFormatter: aFormatter ]