testing
test02CSSAtRuleShouldNotRaiseErrors

	self shouldnt: [CSSAtRule named: '-ignore'] raise: MessageNotUnderstood.