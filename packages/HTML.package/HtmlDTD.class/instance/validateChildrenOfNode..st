actions
validateChildrenOfNode: aNode

	| element children stream |

	(aNode isComment or: [aNode isCDATA]) ifTrue: [^self].
	element := self elementForTag: aNode dtdTag.
	children := aNode children reject: [:ea | ea isComment].	

	stream := ReadStream on: children.
	(element contentRule validateChildren: stream ofNode: aNode)  
		ifTrue:[]	
		ifFalse:
		[
			stream atEnd ifFalse: 
			[
				(self tag: aNode dtdTag canContainTag: stream peek dtdTag) ifFalse:
				[
					stream peek addError: (HtmlTagImproperlyNestedError new)
				]
			].
		]
