formatting commands
parseTextAttributesFor: aDomNode
	
	| attributes resolver |
	attributes := OrderedCollection new.
	resolver := StyleResolver for: aDomNode.
	
	resolver
		ifStyleNotNil: #italic do: [:italic | italic ifTrue: [ attributes add: TextEmphasis italic ]];
		ifStyleNotNil: #bold do: [:bold | bold ifTrue: [ attributes add: TextEmphasis bold ]];
		ifStyleNotNil: #size do: [:size | attributes add: (TextFontChange fontNumber: size)];
		ifStyleNotNil: #color do: [:color | attributes add: (TextColor color: color)].
	^ attributes