lint
showLint
	(StringHolder new contents: self lint) openLabel: 'lint for ', self currentUrl printString.