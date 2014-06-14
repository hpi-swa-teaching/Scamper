parsing
parseContents: aStream

	| cdStart out |

	out := WriteStream on: String new.
	aStream skipSeparators.
	('<![CDATA[' size) timesRepeat: [out nextPut: aStream next].

	(out contents beginsWith: '<![CDATA[') 
		ifTrue: [cdStart := aStream position]
		ifFalse: [self halt]. "I musta messed up something here"

	[(out contents endsWith: ']]>') or: [aStream atEnd]] whileFalse: [out nextPut: aStream next].

	(out contents endsWith: ']]>') ifFalse: 
	[
		aStream position: cdStart.
		aStream upTo: $>.
		self addChild: (HtmlCDATANode start: cdStart end: aStream position -1).
		self endTagMissing: true.
	]
	ifTrue:
	[
		self end: aStream position.
		self addChild: (HtmlCDATANode start: cdStart end: aStream position - ( ']]>' size)).		
		self endTagMissing: false.
	]
