layout
layoutChanged
		"Udate the image and compute new bounds"
		self changed.
		self update: getBgSelector.
		super layoutChanged.
		self changed.