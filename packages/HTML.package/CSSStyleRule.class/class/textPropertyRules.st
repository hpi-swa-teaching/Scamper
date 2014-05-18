definitions
textPropertyRules

	^'Word Spacing
Syntax: 	word-spacing: <value>
Possible Values: 	normal | <length>
Initial Value: 	normal
Applies to: 	All elements
Inherited: 	Yes

The word-spacing property defines an additional amount of space between words. The value must be in the length format; negative values are permitted.

Examples:

P EM   { word-spacing: 0.4em }
P.note { word-spacing: -0.2em }

Letter Spacing
Syntax: 	letter-spacing: <value>
Possible Values: 	normal | <length>
Initial Value: 	normal
Applies to: 	All elements
Inherited: 	Yes

The letter-spacing property defines an additional amount of space between characters. The value must be in the length format; negative values are permitted. A setting of 0 will prevent justification.

Examples:

H1     { letter-spacing: 0.1em }
P.note { letter-spacing: -0.1em }

Text Decoration
Syntax: 	text-decoration: <value>
Possible Values: 	none | [ underline || overline || line-through || blink ]
Initial Value: 	none
Applies to: 	All elements
Inherited: 	No

The text-decoration property allows text to be decorated through one of five properties: underline, overline, line-through, blink, or the default, none.

For example, one can suggest that links not be underlined with

A:link, A:visited, A:active { text-decoration: none }

Vertical Alignment
Syntax: 	vertical-align: <value>
Possible Values: 	baseline | sub | super | top | text-top | middle | bottom | text-bottom | <percentage>
Initial Value: 	baseline
Applies to: 	Inline elements
Inherited: 	No

The vertical-align property may be used to alter the vertical positioning of an inline element, relative to its parent element or to the element''s line. (An inline element is one which has no line break before and after it, for example, EM, A, and IMG in HTML.)

The value may be a percentage relative to the element''s line-height property, which would raise the element''s baseline the specified amount above the parent''s baseline. Negative values are permitted.

The value may also be a keyword. The following keywords affect the positioning relative to the parent element:

    * baseline (align baselines of element and parent)
    * middle (align vertical midpoint of element with baseline plus half the x-height--the height of the letter "x"--of the parent)
    * sub (subscript)
    * super (superscript)
    * text-top (align tops of element and parent''s font)
    * text-bottom (align bottoms of element and parent''s font)

The keywords affecting the positioning relative to the element''s line are

    * top (align top of element with tallest element on the line)
    * bottom (align bottom of element with lowest element on the line)

The vertical-align property is particularly useful for aligning images. Some examples follow:

IMG.middle { vertical-align: middle }
IMG        { vertical-align: 50% }
.exponent  { vertical-align: super }

Text Transformation
Syntax: 	text-transform: <value>
Possible Values: 	none | capitalize | uppercase | lowercase
Initial Value: 	none
Applies to: 	All elements
Inherited: 	Yes

The text-transform property allows text to be transformed by one of four properties:

    * capitalize (capitalizes first character of each word)
    * uppercase (capitalizes all characters of each word)
    * lowercase (uses small letters for all characters of each word)
    * none (the initial value)

Examples:

H1 { text-transform: uppercase }
H2 { text-transform: capitalize }

The text-transform property should only be used to express a stylistic desire. It would be inappropriate, for example, to use text-transform to capitalize a list of countries or names.
Text Alignment
Syntax: 	text-align: <value>
Possible Values: 	left | right | center | justify
Initial Value: 	Determined by browser
Applies to: 	Block-level elements
Inherited: 	Yes

The text-align property can be applied to block-level elements (P, H1, etc.) to give the alignment of the element''s text. This property is similar in function to HTML''s ALIGN attribute on paragraphs, headings, and divisions.

Some examples follow:

H1          { text-align: center }
P.newspaper { text-align: justify }

Text Indentation
Syntax: 	text-indent: <value>
Possible Values: 	<length> | <percentage>
Initial Value: 	0
Applies to: 	Block-level elements
Inherited: 	Yes

The text-indent property can be applied to block-level elements (P, H1, etc.) to define the amount of indentation that the first line of the element should receive. The value must be a length or a percentage; percentages refer to the parent element''s width. A common use of text-indent would be to indent a paragraph:

P { text-indent: 5em }

Line Height
Syntax: 	line-height: <value>
Possible Values: 	normal | <number> | <length> | <percentage>
Initial Value: 	normal
Applies to: 	All elements
Inherited: 	Yes

The line-height property will accept a value to control the spacing between baselines of text. When the value is a number, the line height is calculated by multiplying the element''s font size by the number. Percentage values are relative to the element''s font size. Negative values are not permitted.

Line height may also be given in the font property along with a font size.

The line-height property could be used to double space text:

P { line-height: 200% }

Microsoft Internet Explorer 3.x incorrectly treats number values and values with em or ex units as pixel values. This bug can easily make pages unreadable, and so authors should avoid provoking it wherever possible; percentage units are often a good choice.'