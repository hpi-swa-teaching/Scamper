getting styles
getComputedStylesFrom: aResolver

	self getPaddingFrom: aResolver.
	self getMarginFrom: aResolver.
	self getBorderWidthFrom: aResolver.
	self getTextAlignFrom: aResolver.
	self getHeightWidthFrom: aResolver.