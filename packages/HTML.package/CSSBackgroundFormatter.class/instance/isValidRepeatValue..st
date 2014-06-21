parsing
isValidRepeatValue: aString

	^ {'repeat'. 'repeat-x'. 'repeat-y'. 'no-repeat'. 'initial'. 'inherit'} includes: aString