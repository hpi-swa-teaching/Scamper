reading
readArray
	"read an array"

	| item list |

	self skipWhitespace.

	( stream peek = $( ) 
		ifTrue:
		[
			stream next.
			self skipWhitespace.
			list := OrderedCollection new.
			[stream peek = $) ] whileFalse:
			[
				item := self read.
				list add: item.
				self skipWhitespace.
				(stream peek = $,) ifTrue: [stream next. self skipWhitespace].
			].
			stream next. "consume the trailing paren"
		]
		ifFalse:
		[ 
			"error of some sort here"
		].
		^list