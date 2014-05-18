button state
toggle
	"my button has been clicked on!"

	self pressed: self pressed not.
	inputSet  buttonToggled: self.
	^true