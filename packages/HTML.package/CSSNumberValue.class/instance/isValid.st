as yet unclassified
isValid

	^([valueString asNumber] on: Exception do:[:ex | ex return: nil]) notNil