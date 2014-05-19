parsing
applyStyles

	"TODO: Optimize this based on information described at " 	"http://weblogs.mozillazine.org/hyatt/archives/2005_05.html#007507"

	| rules set |

	rules := self allStyles.
	rules do:[:ea | ea matchCount: 0].
	rules := rules reject:[:ea | ea selector isValid not].
	set := CSSRuleSet new.
	rules do: [:ea | ea addToRuleSet: set].

	self nodesDo:
	[:ea | 
		ea isCSS 
			ifFalse: 
			[
				(set candidateRulesForNode: ea) do: 
				[:rule | 
					(rule selector matches: ea) 
						ifTrue: [ea addStyle: rule. rule matchCount: rule matchCount + 1]
				].
				(ea attributes includesKey: 'style') ifTrue: 
				[
					|  styleRule style |
					style := (ea attributes at: 'style').
					styleRule := (CSSNodeAttributeStyleRule new content: style).
					ea addStyle: styleRule.
				].
			]
	]. 