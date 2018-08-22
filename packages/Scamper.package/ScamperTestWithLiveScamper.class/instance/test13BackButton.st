initialize-release
test13BackButton

	scamper model currentUrlIndex: 2.
	scamper model back.
	self assert: scamper model currentUrlIndex equals: 1