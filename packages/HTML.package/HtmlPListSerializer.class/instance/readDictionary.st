reading
readDictionary
	"read a dictionary - assumes leading { has already been read"

	| c key value dict |

	self skipWhitespace.

	c := stream next.
	( c = ${ ) 
		ifTrue:
		[
			dict := Dictionary new.
			self skipWhitespace.
			[stream peek = $} ] whileFalse:
			[
				key := self read.
				self skipWhitespace.
				c := stream next.
				( c = $=) ifFalse: [ self error: 'expected = here' ].
				value := self read.
				self skipWhitespace.
				c := stream next.
				( c = $;) ifFalse: [ self error: 'expected ; here' ].
				self skipWhitespace.
				dict at: key put: value.
			].
			stream next.
		]
		ifFalse:
		[ 
			self error: 'not a dictionary'
		].
		^dict