testing
test02TableElementsInColumnShouldHaveSameXPositions
| document table |
	document := HtmlDocument new.
	document parseContents: 
		(ReadStream on: '<table>
			<tr><td>First</td><td>Second item</td></tr>
			<tr><td>Third item</td><td>Fourth</td></tr>
			</table>').
	table := document children first getHtmlBlockMorph.
	table layoutInBounds: table bounds.
	self assert: table children first bounds origin x equals: table children third bounds origin x.
	self assert: table children second bounds origin x == table children fourth bounds origin x.