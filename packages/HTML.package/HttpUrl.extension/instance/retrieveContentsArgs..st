*html
retrieveContentsArgs: args
	^self retrieveContentsArgs: args accept: (MIMEDocument guessTypeFromName: self)