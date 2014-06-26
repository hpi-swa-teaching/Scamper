testing
test03TableElementsInRowsShouldHaveSameYPositions
| document table |
	document := HtmlDocument new.
	document parseContents: 
		(ReadStream on: '<table>
			<tr><td>First</td><td>Second item</td></tr>
			<tr><td>Third item</td><td>Fourth</td></tr>
			</table>').
	table := document children first getHtmlBlockMorph.
	table layoutInBounds: table bounds.
	self assert: table children first bounds origin y equals: table children second bounds origin y.
	self assert: table children third bounds origin y == table children fourth bounds origin y.