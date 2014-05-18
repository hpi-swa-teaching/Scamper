definitions
fromString: aString

	| in sel attrString pairs rules |

	rules := OrderedCollection new.
	in := ReadStream on: aString.
	
	[in atEnd] whileFalse:
	[
		| rule |
		sel := (in upTo: ${) trimBoth.
		(in atEnd not and: [sel size > 0]) ifTrue:
		[
			rule:= self new selector: sel.
			rules add: rule.
			attrString := (in upTo: $}) trimBoth.
			pairs := attrString findTokens: ';'.	
			pairs do: 
			[:ea || k v p |  
				p := ea splitOn: ':'. 
				k := p first trimBoth.
				v := p last trimBoth.
				rule properties at: k put: v. 
			]
		]
	].
	^rules