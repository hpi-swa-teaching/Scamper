input handling
reset
	textMorph setText: defaultValue.
	"UO 6/23/2003 - We have to set the model also. setText: is not doing that"
	textMorph model contents: defaultValue