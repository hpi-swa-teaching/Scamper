formatting
parsingFinished
	"some entities need to make a final pass *after* parsing has finished and all the contents of each entity have been established; here is a place to do that"
	contents do: [ :e | e parsingFinished ].