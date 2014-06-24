accessing
boxType

	^ ((CSSStyleResolver for: self) getStyle: #block) ifNil: [ #inline ]