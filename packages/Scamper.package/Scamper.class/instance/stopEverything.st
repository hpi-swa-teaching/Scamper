changing page
stopEverything
	"stop all background threads and empty queues for communicating with them; bring this Scamper to a sane state before embarking on something new"
	
	downloadingProcess ifNotNil: [
		downloadingProcess terminate.
		downloadingProcess := nil. ].

	[ documentQueue isEmpty ] whileFalse: [ documentQueue next ].

	self status: 'sittin' translated.