parsing
isValidWeightValue: aString

	^ {'normal'. 'bold'. 'bolder'. 'lighter'. '100'. '200'. '300'. '400'. '500'. '600'. '700'. '800'. '900'. 'initial'. 'inherit'} includes: aString