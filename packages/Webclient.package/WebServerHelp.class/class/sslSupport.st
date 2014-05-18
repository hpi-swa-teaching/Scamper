pages
sslSupport
	"This method was automatically generated. Edit it using:"
	"WebServerHelp edit: #sslSupport"
	^HelpTopic
		title: 'SSL/TLS Support'
		contents: 
'WebServer supports secure connections over SSL/TLS via SqueakSSL. To install SqueakSSL, execute the following:

	(Installer ss project: ''SqueakSSL'')
		install: ''SqueakSSL-Core'';
		install: ''SqueakSSL-Tests''.

If you have SqueakSSL installed, you can tell WebServer to use a particular cert which puts WebServer into secure mode.

The certName itself is platform dependent. On Unix, the cert name is the path to the .pem file with BOTH the cert and the private key, for example:

	WebServer default certName: ''/home/user/certs/testcert.pem''.

On Windows, the cert name is a string that is matched against the certificate subject. Usually, the certificate subject includes your host name so that you would use:

	WebServer default certName: ''secure.domain.com''.

Client certificate handling is currently not supported.	!
]style[(112 12 2 1 8 1 11 4 8 1 16 4 8 1 17 1 272 11 7 1 9 1 31 1 170 11 7 1 9 1 19 1 58),cblack;,c000000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c127000127,cblack;,c000000127,cblack;,c127000127,cblack;,,cblack;,c000000125,cblack;,c000000125,cblack;,c125000125,cblack;,,cblack;,c000000125,cblack;,c000000125,cblack;,c125000125,cblack;,!' readStream nextChunkText