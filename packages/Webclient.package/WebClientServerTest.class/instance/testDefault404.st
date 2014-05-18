tests - misc
testDefault404
	"Test that a new server responds with 404 to anything"

	| resp |
	resp := WebClient httpGet: self localHostUrl.
	self assert: resp code = 404.
