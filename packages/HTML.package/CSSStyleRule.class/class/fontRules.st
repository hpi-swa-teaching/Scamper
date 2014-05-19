definitions
fontRules

	^'Syntax:  	font-family: [[<family-name> | <generic-family>],]* [<family-name> | <generic-family>]
Possible Values: 	<family-name>

    * Any font family name may be used

<generic-family>

    * serif (e.g., Times)
    * sans-serif (e.g., Arial or Helvetica)
    * cursive (e.g., Zapf-Chancery)
    * fantasy (e.g., Western)
    * monospace (e.g., Courier)

Initial Value: 	Determined by browser
Applies to: 	All elements
Inherited: 	Yes

Font families may be assigned by a specific font name or a generic font family. Obviously, defining a specific font will not be as likely to match as a generic font family. Multiple family assignments can be made, and if a specific font assignment is made it should be followed by a generic family name in case the first choice is not present.

A sample font-family declaration might look like this:

P { font-family: "New Century Schoolbook", Times, serif }

Notice that the first two assignments are specific type faces: New Century Schoolbook and Times. However, since both of them are serif fonts, the generic font family is listed as a backup in case the system does not have either of these but has another serif font which meets the qualifications.

Any font name containing whitespace must be quoted, with either single or double quotes.

The font family may also be given with the font property.
Font Style
Syntax: 	font-style: <value>
Possible Values: 	normal | italic | oblique
Initial Value: 	normal
Applies to: 	All elements
Inherited: 	Yes

The font-style property defines that the font be displayed in one of three ways: normal, italic or oblique (slanted). A sample style sheet with font-style declarations might look like this:

H1 { font-style: oblique }
P  { font-style: normal }

Font Variant
Syntax: 	font-variant: <value>
Possible Values: 	normal | small-caps
Initial Value: 	normal
Applies to: 	All elements
Inherited: 	Yes

The font-variant property determines if the font is to display in normal or small-caps. Small-caps are displayed when all the letters of the word are in capitals with uppercase characters slightly larger than lowercase. Later versions of CSS may support additional variants such as condensed, expanded, small-caps numerals or other custom variants. An example of a font-variant assignment would be:

SPAN { font-variant: small-caps }

Font Weight
Syntax: 	font-weight: <value>
Possible Values: 	normal | bold | bolder | lighter | 100 | 200 | 300 | 400 | 500 | 600 | 700 | 800 | 900
Initial Value: 	normal
Applies to: 	All elements
Inherited: 	Yes

The font-weight property is used to specify the weight of the font. The bolder and lighter values are relative to the inherited font weight, while the other values are absolute font weights.

Note: Since not all fonts have nine possible display weights some of the weights may be grouped together in assignment. If the specified weight is not available, an alternate will be chosen on the following basis:

    * 500 may be switched with 400, and vice versa
    * 100-300 may be assigned to the next lighter weight, if any, or the next darker weight otherwise
    * 600-900 may be assigned to the next darker weight, if any, or the next lighter weight otherwise

Some example font-weight assignments would be:

H1 { font-weight: 800 }
P  { font-weight: normal }

Font Size
Syntax: 	font-size: <absolute-size> | <relative-size> | <length> | <percentage>
Possible Values: 	

    * <absolute-size>
          o xx-small | x-small | small | medium | large | x-large | xx-large
    * <relative-size>
          o larger | smaller
    * <length>
    * <percentage> (in relation to parent element) 


Initial Value: 	medium
Applies to: 	All elements
Inherited: 	Yes

The font-size property is used to modify the size of the displayed font. Absolute lengths (using units like pt and in) should be used sparingly due to their weakness in adapting to different browsing environments. Fonts with absolute lengths can very easily be too small or too large for a user.

Some example size assignments would be:

H1     { font-size: large }
P      { font-size: 12pt }
LI     { font-size: 90% }
STRONG { font-size: larger }

Authors should be aware that Microsoft Internet Explorer 3.x incorrectly treats em and ex units as pixels, which can easily make text using these units unreadable. The browser also incorrectly applies percentage values relative to its default font size for the selector, rather than relative to the parent element''s font size. This makes rules like

H1 { font-size: 200% }

dangerous in that the size will be twice IE''s default font size for level-one headings, rather than twice the parent element''s font size. In this case, BODY would most likely be the parent element, and it would likely define a medium font size, whereas the default level-one heading font size imposed by IE would probably be considered xx-large.

Given these bugs, authors should take care in using percentage values for font-size, and should probably avoid em and ex units for this property.
Font
Syntax: 	font: <value>
Possible Values: 	[ <font-style> || <font-variant> || <font-weight> ]? <font-size> [ / <line-height> ]? <font-family>
Initial Value: 	Not defined
Applies to: 	All elements
Inherited: 	Yes

The font property may be used as a shorthand for the various font properties, as well as the line height. For example,

P { font: italic bold 12pt/14pt Times, serif }

specifies paragraphs with a bold and italic Times or serif font with a size of 12 points and a line height of 14 points.'