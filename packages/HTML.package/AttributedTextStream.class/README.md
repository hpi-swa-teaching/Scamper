a stream on Text's which keeps track of the last attribute put; new characters are added with those attributes.

instance vars:

	characters - a WriteStream of the characters in the stream
	attributeRuns - a RunArray with the attributes for the stream
	currentAttributes - the attributes to be used for new text
	attributesChanged - whether the attributes have changed since the last addition