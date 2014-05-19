accessing
addValues: aCollection fromStream: in

	| pos |
	"At least n"
	n timesRepeat: 
	[
		pos := in position. 
		(self type addValues: aCollection fromStream: in) ifFalse: [in position: pos. ^false]
	].

	"Fulfilled the minimum - read up to m elements - result is success"
	m-n timesRepeat:
	[
		pos := in position.
		(self type addValues: aCollection fromStream: in) ifFalse: [in position: pos. ^true]
	].
	^true