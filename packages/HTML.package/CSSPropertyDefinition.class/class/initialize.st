as yet unclassified
initialize 

	| list dict |
	"CSSPropertyDefinition initialize"
	"Definitions notNil ifTrue: [^self]."
	
	HtmlPListSerializer initialize. "Solves order of initialization dependency"
	list := (HtmlPListSerializer on: (ReadStream on: self initialData)) next.
	dict := Dictionary new.

	list do: 
	[:ea |
		| def |
		def := CSSPropertyDefinition new.
		ea keysDo: [:k | def perform: ((k,':') asSymbol) with: (ea at: k)].
		dict at: def propertyName put: def
	].	
	Definitions := dict.
	dict values do:[:ea | ea valueType]
	