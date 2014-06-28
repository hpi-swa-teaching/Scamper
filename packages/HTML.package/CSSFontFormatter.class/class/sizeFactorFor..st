font parameters
sizeFactorFor: aTextStyle
	self fontSizeFactorMap associationsDo:
			[:association | aTextStyle = (TextStyle named: association key)
								ifTrue: [^association value]].
	^1