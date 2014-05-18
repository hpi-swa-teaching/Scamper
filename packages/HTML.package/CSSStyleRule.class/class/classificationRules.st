definitions
classificationRules

	^'Display
Syntax: 	display: <value>
Possible Values: 	block | inline | list-item | none
Initial Value: 	block
Applies to: 	All elements
Inherited: 	No

The display property is used to define an element with one of four values:

    * block (a line break before and after the element)
    * inline (no line break before and after the element)
    * list-item (same as block except a list-item marker is added)
    * none (no display)

Each element typically is given a default display value by the browser, based on suggested rendering in the HTML specification.

The display property can be dangerous because of its ability to display elements in what would otherwise be an improper format. The use of the value none will turn off display of the element to which it is assigned, including any children elements!
Whitespace
Syntax: 	white-space: <value>
Possible Values: 	normal | pre | nowrap
Initial Value: 	normal
Applies to: 	All elements
Inherited: 	Yes

The white-space property will determine how spaces within the element are treated. This property takes one of three values:

    * normal (collapses multiple spaces into one)
    * pre (does not collapse multiple spaces)
    * nowrap (does not allow line wrapping without a <BR> tag)

List Style Type
Syntax: 	list-style-type: <value>
Possible Values: 	disc | circle | square | decimal | lower-roman | upper-roman | lower-alpha | upper-alpha | none
Initial Value: 	disc
Applies to: 	Elements with display value list-item
Inherited: 	Yes

The list-style-type property specifies the type of list-item marker, and is used if list-style-image is none or if image loading is turned off.

Examples:

LI.square { list-style-type: square }
UL.plain  { list-style-type: none }
OL        { list-style-type: upper-alpha }  /* A B C D E etc. */
OL OL     { list-style-type: decimal }      /* 1 2 3 4 5 etc. */
OL OL OL  { list-style-type: lower-roman }  /* i ii iii iv v etc. */

List Style Image
Syntax: 	list-style-image: <value>
Possible Values: 	<url> | none
Initial Value: 	none
Applies to: 	Elements with display value list-item
Inherited: 	Yes

The list-style-image property specifies the image that will be used as list-item marker when image loading is turned on, replacing the marker specified in the list-style-type property.

Examples:

UL.check { list-style-image: url(/LI-markers/checkmark.gif) }
UL LI.x  { list-style-image: url(x.png) }

List Style Position
Syntax: 	list-style-position: <value>
Possible Values: 	inside | outside
Initial Value: 	outside
Applies to: 	Elements with display value list-item
Inherited: 	Yes

The list-style-position property takes the value inside or outside, with outside being the default. This property determines where the marker is placed in regard to the list item. If the value inside is used, the lines will wrap under the marker instead of being indented. An example rendering is:

Outside rendering:
 * List item 1
   second line of list item

Inside rendering:
   * List item 1
   second line of list item

List Style
Syntax: 	list-style: <value>
Possible Values: 	<list-style-type> || <list-style-position> || <url>
Initial Value: 	Not defined
Applies to: 	Elements with display value list-item
Inherited: 	Yes

The list-style property is a shorthand for the list-style-type, list-style-position, and list-style-image properties.

Examples:

LI.square { list-style: square inside }
UL.plain  { list-style: none }
UL.check  { list-style: url(/LI-markers/checkmark.gif) circle }
OL        { list-style: upper-alpha }
OL OL     { list-style: lower-roman inside }'