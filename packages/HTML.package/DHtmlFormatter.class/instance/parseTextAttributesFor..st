formatting commands
parseTextAttributesFor: aDomNode
	
	| attributes resolver |
	attributes := OrderedCollection new.
	resolver := CSSStyleResolver for: aDomNode.
	
	self parseTextStyleAttributesFor: resolver in: attributes.
	
	resolver
		ifStyleNotNil: #italic do: [:italic | italic ifTrue: [ attributes add: TextEmphasis italic ]];
		ifStyleNotNil: #bold do: [:bold | bold ifTrue: [ attributes add: TextEmphasis bold ]];
		ifStyleNotNil: #color do: [:color | attributes add: (TextColor color: color)];
		ifStyleNotNil: #underlined do:
				[:underlined | underlined ifTrue: [ attributes add: TextEmphasis underlined ]];
		ifStyleNotNil: #struckOut do:
				[:struckOut | struckOut ifTrue: [ attributes add: TextEmphasis struckOut ]];
		ifStyleNotNil: #align do: [:align | attributes add: (TextAlignment perform: align)].
	^ attributes