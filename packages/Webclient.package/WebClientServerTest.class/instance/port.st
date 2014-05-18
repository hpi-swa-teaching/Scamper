setup
port
	"Use a random port to minimise chances of concurrently running test suites clashing."
	^ port
		ifNil: [port := (10000 to: 50000) atRandom]