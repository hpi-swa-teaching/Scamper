testing
test04TableWithUnknownTagShouldntRaiseErrors
	| document |
	document := HtmlDocument new.
	document parseContents: 
		(ReadStream on: '<table border="1">
            <caption>a caption for a table</caption>
            <tr>
                <td><i>italic text in a td cell</i></td>
            </tr>
        </table>').
	self shouldnt: [document children first getHtmlBlockMorph] raise: Error.