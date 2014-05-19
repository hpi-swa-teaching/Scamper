definitions
colorAndBackgroundRules

	^'Color
Syntax: 	color: <color>
Initial Value: 	Determined by browser
Applies to: 	All elements
Inherited: 	Yes

The color property allows authors to specify the color of an element. See the Units section for color value descriptions. Some example color rules include:

H1 { color: blue }
H2 { color: #000080 }
H3 { color: #0c0 }

To help avoid conflicts with user style sheets, background and color properties should always be specified together.
Background Color
Syntax: 	background-color: <value>
Possible Values: 	<color> | transparent
Initial Value: 	transparent
Applies to: 	All elements
Inherited: 	No

The background-color property sets the background color of an element. For example:

BODY { background-color: white }
H1   { background-color: #000080 }

To help avoid conflicts with user style sheets, background-image should be specified whenever background-color is used. In most cases, background-image: none is suitable.

Authors may also use the shorthand background property, which is currently better supported than the background-color property.
Background Image
Syntax: 	background-image: <value>
Possible Values: 	<url> | none
Initial Value: 	none
Applies to: 	All elements
Inherited: 	No

The background-image property sets the background image of an element. For example:

BODY { background-image: url(/images/foo.gif) }
P    { background-image: url(http://www.htmlhelp.com/bg.png) }

When a background image is defined, a similar background color should also be defined for those not loading images.

Authors may also use the shorthand background property, which is currently better supported than the background-image property.
Background Repeat
Syntax: 	background-repeat: <value>
Possible Values: 	repeat | repeat-x | repeat-y | no-repeat
Initial Value: 	repeat
Applies to: 	All elements
Inherited: 	No

The background-repeat property determines how a specified background image is repeated. The repeat-x value will repeat the image horizontally while the repeat-y value will repeat the image vertically. For example:

BODY { background: white url(candybar.gif);
       background-repeat: repeat-x }

In the above example, the image will only be tiled horizontally.

Authors may also use the shorthand background property, which is currently better supported than the background-repeat property.
Background Attachment
Syntax: 	background-attachment: <value>
Possible Values: 	scroll | fixed
Initial Value: 	scroll
Applies to: 	All elements
Inherited: 	No

The background-attachment property determines if a specified background image will scroll with the content or be fixed with regard to the canvas. For example, the following specifies a fixed background image:

BODY { background: white url(candybar.gif);
       background-attachment: fixed }

Authors may also use the shorthand background property, which is currently better supported than the background-attachment property.
Background Position
Syntax: 	background-position: <value>
Possible Values: 	[<percentage> | <length>]{1,2} | [top | center | bottom] || [left | center | right]
Initial Value: 	0% 0%
Applies to: 	Block-level and replaced elements
Inherited: 	No

The background-position property gives the initial position of a specified background image. This property may only be applied to block-level elements and replaced elements. (A replaced element is one for which only the intrinsic dimensions are known; HTML replaced elements include IMG, INPUT, TEXTAREA, SELECT, and OBJECT.)

The easiest way to assign a background position is with keywords:

    * Horizontal keywords (left, center, right)
    * Vertical keywords (top, center, bottom)

Percentages and lengths may also be used to assign the position of the background image. Percentages are relative to the size of the element. Although lengths are allowed, they are not recommended due to their inherent weakness in dealing with differing display resolutions.

When using percentages or lengths, the horizontal position is specified first, followed by the vertical position. A value such as 20% 65% specifies that the point 20% across and 65% down the image be placed at the point 20% across and 65% down the element. A value such as 5px 10px specifies that the upper left corner of the image be placed 5 pixels to the right of and 10 pixels below the upper left corner of the element.

If only the horizontal value is given, the vertical position will be 50%. Combinations of lengths and percentages are allowed, as are negative positions. For example, 10% -2cm is permitted. However, percentages and lengths cannot be combined with keywords.

The keywords are interpreted as follows:

    * top left = left top = 0% 0%
    * top = top center = center top = 50% 0%
    * right top = top right = 100% 0%
    * left = left center = center left = 0% 50%
    * center = center center = 50% 50%
    * right = right center = center right = 100% 50%
    * bottom left = left bottom = 0% 100%
    * bottom = bottom center = center bottom = 50% 100%
    * bottom right = right bottom = 100% 100%

If the background image is fixed with regard to the canvas, the image is placed relative to the canvas instead of the element.

Authors may also use the shorthand background property, which is currently better supported than the background-position property.
Background
Syntax: 	background: <value>
Possible Values: 	<background-color> || <background-image> || <background-repeat> || <background-attachment> || <background-position>
Initial Value: 	Not defined
Applies to: 	All elements
Inherited: 	No

The background property is a shorthand for the more specific background-related properties. Some examples of background declarations follow:

BODY       { background: white url(http://www.htmlhelp.com/foo.gif) }
BLOCKQUOTE { background: #7fffd4 }
P          { background: url(../backgrounds/pawn.png) #f0f8ff fixed }
TABLE      { background: #0c0 url(leaves.jpg) no-repeat bottom right }

A value not specified will receive its initial value. For example, in the first three rules above, the background-position property will be set to 0% 0%.

To help avoid conflicts with user style sheets, background and color properties should always be specified together.'