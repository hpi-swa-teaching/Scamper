initialize-release
test02submitForm
	| scamper website button |
	scamper := Scamper openOnUrl: self preparedFileForTest02.
	(Delay forMilliseconds: 50) wait.
	scamper model step.
	self cleanAfterTest02.
	website := (((scamper submorphs at: 4) submorphs last) submorphs first).
	button := (website submorphs reject: [:Morph | Morph isTextView]) first.
	button performAction.
	scamper model step.
	10 timesRepeat: 
		[(Delay forMilliseconds: 100) wait. 
		scamper model step].
	self assert: scamper model currentUrl asString equals: 	'http://de.selfhtml.org/cgi-bin/comments.pl?Text3=Hasso-Plattner-Institut&Text1=aString&Text2=%2FaString%2F'.
	scamper delete.