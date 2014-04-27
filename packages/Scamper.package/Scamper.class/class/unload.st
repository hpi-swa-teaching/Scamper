class initialization
unload
	"Unload the receiver from global registries"

	FileList unregisterFileReader: self.
	TheWorldMenu unregisterOpenCommandWithReceiver: self.
	Flaps unregisterQuadsWithReceiver: self.
	WebBrowser unregister: self.