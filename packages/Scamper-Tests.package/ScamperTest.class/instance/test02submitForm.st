initialize-release
test02submitForm
	| file scamper website button |
	self prepareTest02.
	file := FileStream oldFileOrNoneNamed:  'Scamper-Tests',
		FileDirectory pathNameDelimiter, 'test02submitFormPage.html'.
	scamper := Scamper openOnUrl: file.
	file close.
	[FileDirectory default deleteDirectory: 'Scamper-Tests'.] on: Error do: [].
	(Delay forMilliseconds: 50) wait.
	scamper model step.
	website := (((scamper submorphs at: 4) submorphs last) submorphs first).
	button := (website submorphs reject: [:Morph | Morph isTextView]) first.
	button performAction.
	scamper model step.
	10 timesRepeat: 
		[(Delay forMilliseconds: 100) wait. 
		scamper model step].
	self assert: scamper model currentUrl asString equals: 	'http://de.selfhtml.org/cgi-bin/comments.pl?Text3=Hasso-Plattner-Institut&Text1=aString&Text2=%2FaString%2F'.
	scamper delete.