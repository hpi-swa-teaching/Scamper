layout
startDownloadingMorphState: morphs
	| count | 
	count := self scamper workerCount min: morphs size.
	count <= 0 ifTrue: [^self].
	1 to: count do: [:start |
		| worker |
		worker := ScamperWorker
			task: (morphs atAll: (start to: morphs size by: count))
			from: self scamper.
		worker start]

