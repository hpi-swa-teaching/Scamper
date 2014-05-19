definitions
unitRules

	^'Length Units

A length value is formed by an optional + or -, followed by a number, followed by a two-letter abbreviation that indicates the unit. There are no spaces in a length value; e.g., 1.3 em is not a valid length value, but 1.3em is valid. A length of 0 does not require the two-letter unit identifier.

Both relative and absolute length units are supported in CSS1. Relative units give a length relative to another length property, and are preferred since they will better adjust to different media. The following relative units are available:

    * em (ems, the height of the element''s font)
    * ex (x-height, the height of the letter "x")
    * px (pixels, relative to the canvas resolution)

Absolute length units are highly dependent on the output medium, and so are less useful than relative units. The following absolute units are available:

    * in (inches; 1in=2.54cm)
    * cm (centimeters; 1cm=10mm)
    * mm (millimeters)
    * pt (points; 1pt=1/72in)
    * pc (picas; 1pc=12pt)

Percentage Units

A percentage value is formed by an optional + or -, followed by a number, followed by %. There are no spaces in a percentage value.

Percentage values are relative to other values, as defined for each property. Most often the percentage value is relative to the element''s font size.
Color Units

A color value is a keyword or a numerical RGB specification.

The 16 keywords are taken from the Windows VGA palette: aqua, black, blue, fuchsia, gray, green, lime, maroon, navy, olive, purple, red, silver, teal, white, and yellow.

RGB colors are given in one of four ways:

    * #rrggbb (e.g., #00cc00)
    * #rgb (e.g., #0c0)
    * rgb(x,x,x) where x is an integer between 0 and 255 inclusive (e.g., rgb(0,204,0))
    * rgb(y%,y%,y%) where y is a number between 0.0 and 100.0 inclusive (e.g., rgb(0%,80%,0%))

The examples above all specify the same color.

Douglas R. Jacobson has also developed a handy quick reference RGB Color Chart (61 kB).
URLs

A URL value is given by url(foo), where foo is the URL. The URL may be optionally quoted with either single ('') or double (") quotes and may contain whitespace before or after the (optionally quoted) URL.

Parentheses, commas, spaces, single quotes, or double quotes in the URL must be escaped with a backslash. Partial URLs are interpreted relative to the style sheet source, not to the HTML source.

Note that Netscape Navigator 4.x incorrectly interprets partial URLs relative to the HTML source. Given this bug, authors may wish to use full URLs where possible.

Examples:

BODY { background: url(stripe.gif) }
BODY { background: url(http://www.htmlhelp.com/stripe.gif) }
BODY { background: url( stripe.gif ) }
BODY { background: url("stripe.gif") }
BODY { background: url(\"Ulalume\".png) } /* quotes in URL escaped */'