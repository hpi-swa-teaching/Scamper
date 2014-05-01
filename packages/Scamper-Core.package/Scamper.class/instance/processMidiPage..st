document handling
processMidiPage: newSource
	Smalltalk at: #MIDIFileReader ifPresent:
		[:reader |
		reader playStream: (RWBinaryOrTextStream with: newSource content) reset binary.
		self status: 'sittin' translated.
		^true].
	^false