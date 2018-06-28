accessing
boxType

	^ ((CSSStyleResolver for: self) getStyle: #display) ifNil: [ #inline ]