class initialization
initialize
	"comment stating purpose of message"
	| dict |

	ReadTranslations notNil ifTrue: [^self].

	dict := Dictionary new.
			dict at: $" put: $".
			dict at: $' put: $'.
			dict at: $\ put: $\.
			dict at: $n put: (Character cr).
			dict at: $r put: (Character cr).
			dict at: $t put: (Character tab).
	ReadTranslations := dict.

	dict := Dictionary new.
			dict at: Character tab put: '\t'.
			dict at: Character cr put: '\n'.
			dict at: $" put: '\"'.
			dict at: $' put: ('\', ($' asString)).
			dict at: $\ put: '\\'.
	WriteTranslations := dict
