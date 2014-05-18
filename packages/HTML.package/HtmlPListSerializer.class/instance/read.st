reading
read
	"read a complete plist object assembly from the stream and return it"

	| c |

	self skipWhitespace.
	c := stream peek.
		
	 ^(c = ${)  ifTrue: [ self readDictionary ]
		ifFalse: 
		[
			( c = $( ) ifTrue: [ self readArray ]
			ifFalse: 
			[
				( c = $" ) ifTrue: [ self readQuotedString ] 
				ifFalse: [(self readString)]
			]
		]