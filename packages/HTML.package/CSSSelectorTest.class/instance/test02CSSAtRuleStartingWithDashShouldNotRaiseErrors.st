testing
test02CSSAtRuleStartingWithDashShouldNotRaiseErrors

	self shouldnt: [CSSAtRule named: '-ignore'] raise: MessageNotUnderstood.