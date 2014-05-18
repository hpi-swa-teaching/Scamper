tests - misc
testStreaming
	"Run a test for a full auth-redirect-cookie loop"

	| resp amount stream |
	amount := 128*1024.
	server addService: '/streaming' action:[:req|
		req stream200Response: (String new: amount) readStream size: amount.
	].
	resp := WebClient httpGet: self localHostUrl, '/streaming'.
	self assert: resp isSuccess.
	stream := WriteStream on: String new.
	resp streamTo: stream size: resp contentLength progress: nil.
	self assert: stream position = amount.
