definitions
boxPropertyRules

	^'Top Margin
Syntax: 	margin-top: <value>
Possible Values: 	<length> | <percentage> | auto
Initial Value: 	0
Applies to: 	All elements
Inherited: 	No

The margin-top property sets the top margin of an element by specifying a length or a percentage. Percentage values refer to the parent element''s width. Negative margins are permitted.

For example, the following rule would eliminate the top margin of a document:

BODY { margin-top: 0 }

Note that adjoining vertical margins are collapsed to use the maximum of the margin values.
Right Margin
Syntax: 	margin-right: <value>
Possible Values: 	<length> | <percentage> | auto
Initial Value: 	0
Applies to: 	All elements
Inherited: 	No

The margin-right property sets the right margin of an element by specifying a length or a percentage. Percentage values refer to the parent element''s width. Negative margins are permitted.

Example:

P.narrow { margin-right: 50% }

Note that adjoining horizontal margins are not collapsed.
Bottom Margin
Syntax: 	margin-bottom: <value>
Possible Values: 	<length> | <percentage> | auto
Initial Value: 	0
Applies to: 	All elements
Inherited: 	No

The margin-bottom property sets the bottom margin of an element by specifying a length or a percentage. Percentage values refer to the parent element''s width. Negative margins are permitted.

Example:

DT { margin-bottom: 3em }

Note that adjoining vertical margins are collapsed to use the maximum of the margin values.
Left Margin
Syntax: 	margin-left: <value>
Possible Values: 	<length> | <percentage> | auto
Initial Value: 	0
Applies to: 	All elements
Inherited: 	No

The margin-left property sets the left margin of an element by specifying a length or a percentage. Percentage values refer to the parent element''s width. Negative margins are permitted.

Example:

ADDRESS { margin-left: 50% }

Note that adjoining horizontal margins are not collapsed.
Margin
Syntax: 	margin: <value>
Possible Values: 	[ <length> | <percentage> | auto ]{1,4}
Initial Value: 	Not defined
Applies to: 	All elements
Inherited: 	No

The margin property sets the margins of an element by specifying between one and four values, where each value is a length, a percentage, or auto. Percentage values refer to the parent element''s width. Negative margins are permitted.

If four values are given, they apply to top, right, bottom, and left margin, respectively. If one value is given, it applies to all sides. If two or three values are given, the missing values are taken from the opposite side.

Examples of margin declarations include:

BODY { margin: 5em }             /* all margins 5em */
P    { margin: 2em 4em }         /* top and bottom margins 2em,
                                    left and right margins 4em */
DIV  { margin: 1em 2em 3em 4em } /* top margin 1em,
                                    right margin 2em,
                                    bottom margin 3em,
                                    left margin 4em */

Note that adjoining vertical margins are collapsed to use the maximum of the margin values. Horizontal margins are not collapsed.

Using the margin property allows one to set all margins; alternatively, the properties margin-top, margin-bottom, margin-left, and margin-right may be used.
Top Padding
Syntax: 	padding-top: <value>
Possible Values: 	<length> | <percentage>
Initial Value: 	0
Applies to: 	All elements
Inherited: 	No

The padding-top property describes how much space to put between the top border and the content of the selector. The value is either a length or a percentage. Percentage values refer to the parent element''s width. Negative values are not permitted.
Right Padding
Syntax: 	padding-right: <value>
Possible Values: 	<length> | <percentage>
Initial Value: 	0
Applies to: 	All elements
Inherited: 	No

The padding-right property describes how much space to put between the right border and the content of the selector. The value is either a length or a percentage. Percentage values refer to the parent element''s width. Negative values are not permitted.
Bottom Padding
Syntax: 	padding-bottom: <value>
Possible Values: 	<length> | <percentage>
Initial Value: 	0
Applies to: 	All elements
Inherited: 	No

The padding-bottom property describes how much space to put between the bottom border and the content of the selector. The value is either a length or a percentage. Percentage values refer to the parent element''s width. Negative values are not permitted.
Left Padding
Syntax: 	padding-left: <value>
Possible Values: 	<length> | <percentage>
Initial Value: 	0
Applies to: 	All elements
Inherited: 	No

The padding-left property describes how much space to put between the left border and the content of the selector. The value is either a length or a percentage. Percentage values refer to the parent element''s width. Negative values are not permitted.
Padding
Syntax: 	padding: <value>
Possible Values: 	[ <length> | <percentage> ]{1,4}
Initial Value: 	0
Applies to: 	All elements
Inherited: 	No

The padding property is a shorthand for the padding-top, padding-right, padding-bottom, and padding-left properties.

An element''s padding is the amount of space between the border and the content of the element. Between one and four values are given, where each value is either a length or a percentage. Percentage values refer to the parent element''s width. Negative values are not permitted.

If four values are given, they apply to top, right, bottom, and left padding, respectively. If one value is given, it applies to all sides. If two or three values are given, the missing values are taken from the opposite side.

For example, the following rule sets the top padding to 2em, the right padding to 4em, the bottom padding to 5em, and the left padding to 4em:

BLOCKQUOTE { padding: 2em 4em 5em }

Top Border Width
Syntax: 	border-top-width: <value>
Possible Values: 	thin | medium | thick | <length>
Initial Value: 	medium
Applies to: 	All elements
Inherited: 	No

The border-top-width property is used to specify the width of an element''s top border. The value may be one of three keywords, which are not affected by font size, or a length, which can be used to achieve relative widths. Negative values are not allowed.

One may also use the border-top, border-width, or border shorthand properties.
Right Border Width
Syntax: 	border-right-width: <value>
Possible Values: 	thin | medium | thick | <length>
Initial Value: 	medium
Applies to: 	All elements
Inherited: 	No

The border-right-width property is used to specify the width of an element''s right border. The value may be one of three keywords, which are not affected by font size, or a length, which can be used to achieve relative widths. Negative values are not allowed.

One may also use the border-right, border-width, or border shorthand properties.
Bottom Border Width
Syntax: 	border-bottom-width: <value>
Possible Values: 	thin | medium | thick | <length>
Initial Value: 	medium
Applies to: 	All elements
Inherited: 	No

The border-bottom-width property is used to specify the width of an element''s bottom border. The value may be one of three keywords, which are not affected by font size, or a length, which can be used to achieve relative widths. Negative values are not allowed.

One may also use the border-bottom, border-width, or border shorthand properties.
Left Border Width
Syntax: 	border-left-width: <value>
Possible Values: 	thin | medium | thick | <length>
Initial Value: 	medium
Applies to: 	All elements
Inherited: 	No

The border-left-width property is used to specify the width of an element''s left border. The value may be one of three keywords, which are not affected by font size, or a length, which can be used to achieve relative widths. Negative values are not allowed.

One may also use the border-left, border-width, or border shorthand properties.
Border Width
Syntax: 	border-width: <value>
Possible Values: 	[ thin | medium | thick | <length> ]{1,4}
Initial Value: 	Not defined
Applies to: 	All elements
Inherited: 	No

The border-width property is used to set the border width of an element by specifying between one and four values, where each value is a keyword or a length. Negative lengths are not permitted.

If four values are given, they apply to top, right, bottom, and left border width, respectively. If one value is given, it applies to all sides. If two or three values are given, the missing values are taken from the opposite side.

This property is a shorthand for the border-top-width, border-right-width, border-bottom-width, and border-left-width properties.

One may also use the border shorthand property.
Border Color
Syntax: 	border-color: <value>
Possible Values: 	<color>{1,4}
Initial Value: 	The value of the color property
Applies to: 	All elements
Inherited: 	No

The border-color property sets the color of an element''s border. Between one and four color values are specified. If four values are given, they apply to top, right, bottom, and left border color, respectively. If one value is given, it applies to all sides. If two or three values are given, the missing values are taken from the opposite side.

One may also use the border shorthand property.
Border Style
Syntax: 	border-style: <value>
Possible Values: 	[ none | dotted | dashed | solid | double | groove | ridge | inset | outset ]{1,4}
Initial Value: 	none
Applies to: 	All elements
Inherited: 	No

The border-style property sets the style of an element''s border. This property must be specified for the border to be visible.

Between one and four keywords are specified. If four values are given, they apply to top, right, bottom, and left border style, respectively. If one value is given, it applies to all sides. If two or three values are given, the missing values are taken from the opposite side.

One may also use the border shorthand property.
Top Border
Syntax: 	border-top: <value>
Possible Values: 	<border-top-width> || <border-style> || <color>
Initial Value: 	Not defined
Applies to: 	All elements
Inherited: 	No

The border-top property is a shorthand for setting the width, style, and color of an element''s top border.

Note that only one border-style value may be given.

One may also use the border shorthand property.
Right Border
Syntax: 	border-right: <value>
Possible Values: 	<border-right-width> || <border-style> || <color>
Initial Value: 	Not defined
Applies to: 	All elements
Inherited: 	No

The border-right property is a shorthand for setting the width, style, and color of an element''s right border.

Note that only one border-style value may be given.

One may also use the border shorthand property.
Bottom Border
Syntax: 	border-bottom: <value>
Possible Values: 	<border-bottom-width> || <border-style> || <color>
Initial Value: 	Not defined
Applies to: 	All elements
Inherited: 	No

The border-bottom property is a shorthand for setting the width, style, and color of an element''s bottom border.

Note that only one border-style value may be given.

One may also use the border shorthand property.
Left Border
Syntax: 	border-left: <value>
Possible Values: 	<border-left-width> || <border-style> || <color>
Initial Value: 	Not defined
Applies to: 	All elements
Inherited: 	No

The border-left property is a shorthand for setting the width, style, and color of an element''s left border.

Note that only one border-style value may be given.

One may also use the border shorthand property.
Border
Syntax: 	border: <value>
Possible Values: 	<border-width> || <border-style> || <color>
Initial Value: 	Not defined
Applies to: 	All elements
Inherited: 	No

The border property is a shorthand for setting the width, style, and color of an element''s border.

Examples of border declarations include:

H2        { border: groove 3em }
A:link    { border: solid blue }
A:visited { border: thin dotted #800080 }
A:active  { border: thick double red }

The border property can only set all four borders; only one border width and border style may be given. To give different values to an element''s four borders, an author must use one or more of the border-top, border-right, border-bottom, border-left, border-color, border-width, border-style, border-top-width, border-right-width, border-bottom-width, or border-left-width properties.
Width
Syntax: 	width: <value>
Possible Values: 	<length> | <percentage> | auto
Initial Value: 	auto
Applies to: 	Block-level and replaced elements
Inherited: 	No

Each block-level or replaced element can be given a width, specified as a length, a percentage, or as auto. (A replaced element is one for which only the intrinsic dimensions are known; HTML replaced elements include IMG, INPUT, TEXTAREA, SELECT, and OBJECT.) The initial value for the width property is auto, which results in the element''s intrinsic width (i.e., the width of the element itself, for example the width of an image). Percentages refer to the parent element''s width. Negative values are not allowed.

This property could be used to give common widths to some INPUT elements, such as submit and reset buttons:

INPUT.button { width: 10em }

Height
Syntax: 	height: <value>
Possible Values: 	<length> | auto
Initial Value: 	auto
Applies to: 	Block-level and replaced elements
Inherited: 	No

Each block-level or replaced element can be given a height, specified as a length or as auto. (A replaced element is one for which only the intrinsic dimensions are known; HTML replaced elements include IMG, INPUT, TEXTAREA, SELECT, and OBJECT.) The initial value for the height property is auto, which results in the element''s intrinsic height (i.e., the height of the element itself, for example the height of an image). Negative lengths are not allowed.

As with the width property, height can be used to scale an image:

IMG.foo { width: 40px; height: 40px }

In most cases, authors are advised to scale the image in an image editing program, since browsers will not likely scale images with high quality, and since scaling down causes the user to download an unnecessarily large file. However, scaling through the width and height properties is a useful option for user-defined style sheets in order to overcome vision problems.
Float
Syntax: 	float: <value>
Possible Values: 	left | right | none
Initial Value: 	none
Applies to: 	All elements
Inherited: 	No

The float property allows authors to wrap text around an element. This is identical in purpose to HTML 3.2''s ALIGN=left and ALIGN=right for the IMG element, but CSS1 allows all elements to "float," not just the images and tables that HTML 3.2 allows.
Clear
Syntax: 	clear: <value>
Possible Values: 	none | left | right | both
Initial Value: 	none
Applies to: 	All elements
Inherited: 	No

The clear property specifies if an element allows floating elements to its sides. A value of left moves the element below any floating element on its left; right acts similarly for floating elements on the right. Other values are none, which is the initial value, and both, which moves the element below floating elements on both of its sides. This property is similar in function to HTML 3.2''s <BR CLEAR=left|right|all|none>, but it can be applied to all elements.'