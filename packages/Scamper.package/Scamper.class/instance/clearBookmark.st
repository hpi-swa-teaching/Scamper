as yet unclassified
clearBookmark
	| Directory |
	Directory :=FileDirectory on: (self bookDir pathName).
	Directory deleteLocalFiles.
	self bookmark: Dictionary new.
	