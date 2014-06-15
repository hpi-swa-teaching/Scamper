as yet unclassified
test01CSSSelectorWihtoutNilSelector

	| selector |
	selector := CSSSelector fromString: 'yt-uix-button img,.yt-uix-button-icon-wrapper+.yt-uix-button-content'.
	self assert: selector asString equals: 'yt-uix-button img , *.yt-uix-button-icon-wrapper+*.yt-uix-button-content '.