testing
test01NodeWithoutParentShouldntRaiseErrors
	| selector |
	selector := CSSSelector fromString: 'a>*'.
	self shouldnt: [selector matches: HtmlDocument new] raise: Error