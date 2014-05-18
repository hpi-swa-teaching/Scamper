definitions
allRules

	| dict |

	dict := Dictionary new.

	dict addAll: (self structuredRulesFrom: self boxPropertyRules).
	dict addAll: (self structuredRulesFrom: self classificationRules).
	dict addAll: (self structuredRulesFrom: self colorAndBackgroundRules).
	dict addAll: (self structuredRulesFrom: self fontRules).
	dict addAll: (self structuredRulesFrom: self textPropertyRules).
	^dict