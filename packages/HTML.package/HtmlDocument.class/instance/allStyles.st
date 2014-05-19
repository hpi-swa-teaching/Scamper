parsing
allStyles

	| rules |

	rules := OrderedCollection new.
	self stylesheets do: [:sheet | rules addAll: (sheet children select:[:ea | ea isStyleRule])].
	^rules asArray