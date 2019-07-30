initialization
initialize
	"Initialize the class"
	self StartUrl: self StartUrl.
	FileList registerFileReader: self.
	WebBrowser
		register: self;
		default: self.
