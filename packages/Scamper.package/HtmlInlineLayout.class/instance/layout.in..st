layout
layout: aMorph in: newBounds
	
	
	aMorph layoutStyles textAlign ifNotNilDo: [:alignment | aMorph perform: alignment].
	
	"code below ensures margins for inline elements but breaks forms and leads to big display problems (e.g. when googling something)"
	
	"contentOrigin := newBounds origin asIntegerPoint.
	currentX := 0.
	aMorph submorphs do: [ :morph |
		| morphBounds newTopLeft |
		((morph isKindOf: HtmlBlockMorph)) ifTrue:[
		newTopLeft := (contentOrigin + (currentX@0)).
		morphBounds := newTopLeft corner: newBounds corner.
		morph layoutInBounds: morphBounds.
		currentX := currentX + morph width + morph layoutStyles extraMarginWidth]]."
	
