as yet unclassified
boxType

	^ ((StyleResolver for: self) getStyle: #block) ifNil: [ #inline ]