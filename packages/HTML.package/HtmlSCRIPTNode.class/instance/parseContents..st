accessing
parseContents: aStream

	| str spos script |

	self hasTrailingSlash ifTrue: [^self end: aStream position; endTagMissing: true].

	spos := aStream position.
	str := aStream upTo: $>.
	
	[(str asLowercase endsWith: ('</',self tag)) or: [aStream atEnd]] 
		whileFalse: [str := (str, '>', (aStream upTo: $>))].

	self end: aStream position.
	script := (str first: (str size - (self tag size + 2))) trimBoth.

	(script trimBoth size > 0) ifTrue:
	[ 
		((script beginsWith: '<!--') and: [script endsWith: '-->']) ifFalse:
		[
			(self dtd isXML and: [(script beginsWith: '<![CDATA[') and:[script endsWith:']]>']]) 
			ifTrue:
			[
				| child  |
				self addChild: (child:= HtmlXMLCDataNode new start: spos).
				aStream position: spos.
				child parseContents: aStream.
				aStream upTo: $>.
				self end: aStream position. 
			]
			ifFalse:
			[
				self addChild: (HtmlCDATANode  
					start: spos end: (aStream position - (self tag size + 3))).
				self addError:(HtmlUncommentedScriptError new).
			]
		]
		ifTrue:
		[
			| child in cend |
			cend := (aStream position - (self tag size + 3)).
			in := ReadStream on: (aStream contents first: cend).
			in position: spos.
			child := HtmlCommentNode new start: spos.
			self addChild: child.
			child parseContents: in. 
		]
	].
	self end: aStream position.
	self endTagMissing: (str asLowercase endsWith: ('</',self tag)) not.
	