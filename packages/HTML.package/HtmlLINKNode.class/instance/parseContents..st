parsing
parseContents: aStream

	| rel |

	rel := self attributes keys detect: [:ea | ea asLowercase = 'rel'] ifNone: [nil].
	(rel notNil and: [((self attributes at: rel) asLowercase findTokens: ' ') includes: 'stylesheet']) 
	ifTrue: 
	[
		href := self attributes keys detect: [:ea | ea asLowercase = 'href'] ifNone: [nil].
		href isNil ifFalse: 
		[
			href := self attributes at: href.
			(href notNil and:[href size > 0]) ifTrue:
			[
				self loader queueUrl: href. "Start download in another thread"
			]
			ifFalse: [href := nil].
		]
	].
	super parseContents: aStream