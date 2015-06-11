decoding
decodeUrlEncodedForm: aString multipleValues: aBool withConverter: aTextConverter
	"Decodes the fields embedded in the url ?var1=val1&var2=val2"

	| fields |
	fields := Dictionary new.
	self decodeUrlEncodedForm: aString do:[:key :value|
		aBool 
			ifTrue:[
				fields 
					at: key 
					put: (fields at: key ifAbsent:['']), (value convertFromWithConverter: aTextConverter) ]
			ifFalse:[
				fields 
					at: key 
					put: (value convertFromWithConverter: aTextConverter) ].
	].
	^fields