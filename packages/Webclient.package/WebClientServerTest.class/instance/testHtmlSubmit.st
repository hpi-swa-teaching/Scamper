tests - misc
testHtmlSubmit
	"Ensure that we have round-trip conversion for html submit"

	| fieldDict fieldList |
	fieldDict := Dictionary newFromPairs: {'foo'. 123. 'bar'. 'yoho'}.
	fieldList := {'foo' -> 123. 'bar' -> 'yoho'}.
	self testHtmlSubmitUsing: fieldDict.
	self testHtmlSubmitUsing: fieldList.