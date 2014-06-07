accessing
boxType

	^ ((StyleResolver for: self) getStyle: #block) ifNil: [ #inline ]