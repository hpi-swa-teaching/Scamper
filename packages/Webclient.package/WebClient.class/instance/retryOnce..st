initialize
retryOnce: aTryBlock
	" Retry the block once if it failes,
	except for direct network errors.
	This can help in cases like temporary failing
	SqueakSSL primitives"
	| again |
	again := true.
	[^ aTryBlock value.
	] on: Error do: [:e |
		((e isKindOf: NetworkError) or: [again not])
			ifTrue: [e pass]
			ifFalse: [again := false. e retry]].