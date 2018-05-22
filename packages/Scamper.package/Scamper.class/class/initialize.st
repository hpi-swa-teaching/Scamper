initialization
initialize
	"Initialize the class"

	self StartUrl: 'browser:about'.
	FileList registerFileReader: self.
	WebBrowser register: self.
	TheWorldMenu registerOpenCommand: {'Scamper'. {self. #open}}.