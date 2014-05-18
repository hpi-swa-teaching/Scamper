accessing
url
	^FileUrl pathParts: ((self directory pathParts) copyWith: self localFilename)