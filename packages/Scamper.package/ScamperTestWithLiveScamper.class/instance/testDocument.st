initialize-release
testDocument

	self assert: (scamper model document = nil).
	self assert: (scamper model lint = '').
	self assert: (scamper model hasLint = false)
	