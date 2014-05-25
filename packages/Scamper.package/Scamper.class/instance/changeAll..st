change/update
changeAll: aspects
	"We have changed all of the aspects in the given array"
	aspects do:[:symbol| self changed: symbol].