instance creation
readFrom: in

	| cls obj out |
	in next = $: ifFalse: [self halt].
	out := WriteStream on: String new.
	"out nextPutAll: 'CSS'."
	out nextPut: in next asUppercase.
	[in peek notNil and: [in peek isLetter or: [in peek = $-]]] whileTrue: 
	[
		in peek = $- 
			ifTrue: [in next. out nextPut: in next asUppercase] 
			ifFalse: [out nextPut: in next]
	].
	"out nextPutAll: 'Selector'."

	cls := (Smalltalk at: ('CSS',(out contents),'Selector') asSymbol ifAbsent: [self]).
	cls = self ifTrue: [obj := cls new pseudoClassName: out contents] ifFalse: [obj := cls new].
	in skipSeparators.
	in peek = $( ifTrue:[ in next. obj arguments: (in upTo: $) )].
	^obj