accessing
value
	^MIMEDocument contentType: (MIMEDocument guessTypeFromName: self filename)
		content: nil
		url: self url