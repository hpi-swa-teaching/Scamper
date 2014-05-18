tests - websockets
testWebSockets07DataDecode
	"Tests from section 4.7 of the WebSockets spec"

	| data ws |
	ws := WebSocket07 new.
	ws onMessage:[:msg| data := msg].
	"A single-frame unmasked text message"
	data := nil.
	ws readFrameFrom: 
		#[16r81 16r05 16r48 16r65 16r6C 16r6C 16r6F] readStream.
	self assert: data = 'Hello'.

	"A single-frame masked text message"
	data := nil.
	ws readFrameFrom:
		#[16r81 16r85 16r37 16rFA 16r21 16r3D 16r7F 16r9F 16r4D 16r51 16r58] readStream.
	self assert: data = 'Hello'.

	"A fragmented unmasked text message"
	data := nil.	
	ws readFrameFrom: 
		#[16r01 16r03 16r48 16r65 16r6C] readStream. "contains 'Hel'"
	self assert: data = nil.
	ws readFrameFrom:
		#[16r80 16r02 16r6C 16r6F] readStream. "contains 'lo'"
	self assert: data = 'Hello'.
