accessing
matchingNodes

	^self document nodesSelect:[:ea | selector matches: ea]