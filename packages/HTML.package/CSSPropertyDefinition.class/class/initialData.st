instance creation
initialData

	^'( { 
   initialValue = "depends on user agent and writing direction" ; 
   media = ( visual); 
   appliesTo = "block-level elements" ; 
   valueString = "left | right | center | justify |  <string>  |  inherit" ; 
   percentages = no; 
   propertyName = text-align; 
}, { 
 initialValue = none; 
 media = ( visual); 
 appliesTo = "block-level elements" ; 
 valueString = "none | left | right | both |  inherit" ; 
 percentages = no; 
 propertyName = clear; 
}, { 
 initialValue = XX; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<padding-width> {1,4} |  inherit" ; 
 percentages = "refer to width of containing block" ; 
 propertyName = padding; 
}, { 
 initialValue = auto; 
 media = ( visual); 
 appliesTo = "\''table\''  and \''inline-table\'' elements" ; 
 valueString = "auto | fixed |  inherit" ; 
 percentages = no; 
 propertyName = table-layout; 
}, { 
 initialValue = "depends on user agent" ; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<color>  |  inherit" ; 
 percentages = no; 
 propertyName = color; 
}, 
{ 
 initialValue = auto; 
 media = ( visual); 
 appliesTo = "block-level and replaced elements" ; 
 valueString = "<shape>  | auto |  inherit" ; 
 percentages = no; 
 propertyName = clip; 
}, { 
 initialValue = normal; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "normal | small-caps |  inherit" ; 
 percentages = no; 
 propertyName = font-variant; 
}, { 
 initialValue = "see individual properties" ; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "[  \''border-top-width\''  ||  \''border-style\''  ||  <color>  ] |  inherit" ; 
 percentages = no; 
 propertyName = border-top; 
}, { 
 initialValue = 2; 
 media = ( visual, paged); 
 appliesTo = "block-level elements" ; 
 valueString = "<integer>  |  inherit" ; 
 percentages = no; 
 propertyName = widows; 
}, { 
 initialValue = XX; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "[ \''background-color\''  ||  \''background-image\''  ||  \''background-repeat\''  ||  \''background-attachment\''  ||  \''background-position\'' ] |  inherit" ; 
 percentages = "allowed on \''background-position\''" ; 
 propertyName = background; 
}, 
{ 
 initialValue = none; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<border-style>  |  inherit" ; 
 percentages = no; 
 propertyName = border-top-style; 
}, { 
 initialValue = ltr; 
 media = ( visual); 
 appliesTo = "all elements, but see prose" ; 
 valueString = "ltr | rtl |  inherit" ; 
 percentages = no; 
 propertyName = direction; 
}, { 
 initialValue = medium; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<absolute-size>  |  <relative-size>  |  <length>  |  <percentage>  |  inherit" ; 
 percentages = "refer to parent element\''s font size" ; 
 propertyName = font-size; 
}, { 
 initialValue = "see individual properties" ; 
 media = ( visual, interactive); 
 appliesTo = all; 
 valueString = "[  \''outline-color\''  ||  \''outline-style\''  ||  \''outline-width\''  ] |  inherit" ; 
 percentages = no; 
 propertyName = outline; 
}, { 
 initialValue = auto; 
 media = ( visual); 
 appliesTo = "all elements but non-replaced inline elements, table rows, and row groups" ; 
 valueString = "<length>  |  <percentage>  | auto |  inherit" ; 
 percentages = "refer to width of containing block" ; 
 propertyName = width; 
}, 
{ 
 initialValue = "see individual properties" ; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<color> {1,4} | transparent |  inherit" ; 
 percentages = no; 
 propertyName = border-color; 
}, { 
 initialValue = "see individual properties" ; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<border-width> {1,4} |  inherit" ; 
 percentages = no; 
 propertyName = border-width; 
}, { 
 initialValue = normal; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "normal | bold | bolder | lighter | 100 | 200 | 300 | 400 | 500 | 600 | 700 | 800 | 900 |  inherit" ; 
 percentages = no; 
 propertyName = font-weight; 
}, { 
 initialValue = normal; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "normal |  <number>  |  <length>  |  <percentage>  |  inherit" ; 
 percentages = "refer to the font size of the element itself" ; 
 propertyName = line-height; 
}, { 
 initialValue = 0; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<margin-width>  |  inherit" ; 
 percentages = "refer to width of containing block" ; 
 propertyName = margin-top; 
}, 
{ 
 initialValue = outside; 
 media = ( visual); 
 appliesTo = "elements with \''display: list-item\''" ; 
 valueString = "inside | outside |  inherit" ; 
 percentages = no; 
 propertyName = list-style-position; 
}, { 
 initialValue = normal; 
 media = ( visual); 
 appliesTo = "block-level elements" ; 
 valueString = "normal | pre | nowrap |  inherit" ; 
 percentages = no; 
 propertyName = white-space; 
}, { 
 initialValue = 0; 
 media = ( visual); 
 appliesTo = "all elements except non-replaced inline elements and table elements" ; 
 valueString = "<length>  |  <percentage>  |  inherit" ; 
 percentages = "refer to height of containing block" ; 
 propertyName = min-height; 
}, { 
 initialValue = "the value of the \''color\'' property" ; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<color>  |  inherit" ; 
 percentages = no; 
 propertyName = border-bottom-color; 
}, { 
 initialValue = medium; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<border-width>  |  inherit" ; 
 percentages = no; 
 propertyName = border-bottom-width; 
}, 
{ 
 initialValue = auto; 
 media = ( visual, interactive); 
 appliesTo = all; 
 valueString = "[ [ <uri>  ,]* [ auto | crosshair | default | pointer | move | e-resize | ne-resize | nw-resize | n-resize | se-resize | sw-resize | s-resize | w-resize| text | wait | help ] ] |  inherit" ; 
 percentages = no; 
 propertyName = cursor; 
}, { 
 initialValue = auto; 
 media = ( visual, paged); 
 appliesTo = "block-level elements" ; 
 valueString = "<identifier>  | auto" ; 
 percentages = no; 
 propertyName = page; 
}, { 
 initialValue = disc; 
 media = ( visual); 
 appliesTo = "elements with \''display: list-item\''" ; 
 valueString = "disc | circle | square | decimal | decimal-leading-zero |   lower-roman | upper-roman | lower-greek |  lower-alpha | lower-latin | upper-alpha | upper-latin |   hebrew | armenian | georgian |   cjk-ideographic | hiragana | katakana | hiragana-iroha | katakana-iroha |  none |  inherit" ; 
 percentages = no; 
 propertyName = list-style-type; 
}, { 
 initialValue = inline; 
 media = ( all); 
 appliesTo = all; 
 valueString = "inline | block | list-item | run-in | compact | marker | table | inline-table | table-row-group | table-header-group | table-footer-group | table-row | table-column-group | table-column | table-cell | table-caption | none |  inherit" ; 
 percentages = no; 
 propertyName = display; 
}, { 
 initialValue = auto; 
 media = ( visual, paged); 
 appliesTo = "block-level elements" ; 
 valueString = "auto | always | avoid | left | right |  inherit" ; 
 percentages = no; 
 propertyName = page-break-after; 
}, 
{ 
 initialValue = 0; 
 media = ( visual); 
 appliesTo = "\''table\'' and \''inline-table\'' elements" ; 
 valueString = "[<length> <length>?] |  inherit" ; 
 percentages = no; 
 propertyName = border-spacing; 
}, { 
 initialValue = "see individual properties" ; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<border-style> {1,4} |  inherit" ; 
 percentages = no; 
 propertyName = border-style; 
}, { 
 initialValue = none; 
 media = ( all); 
 appliesTo = all; 
 valueString = "[  <identifier> <integer> ? ]+ | none |  inherit" ; 
 percentages = no; 
 propertyName = counter-increment; 
}, { 
 initialValue = auto; 
 media = ( visual, paged); 
 appliesTo = "block-level elements" ; 
 valueString = "auto | always | avoid | left | right |  inherit" ; 
 percentages = no; 
 propertyName = page-break-before; 
}, { 
 initialValue = auto; 
 media = ( visual); 
 appliesTo = "positioned elements" ; 
 valueString = "<length>  |  <percentage>  | auto |  inherit" ; 
 percentages = "refer to width of containing block" ; 
 propertyName = right; 
}, 
{ 
 initialValue = "the value of the \''color\'' property" ; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<color>  |  inherit" ; 
 percentages = no; 
 propertyName = border-right-color; 
}, { 
 initialValue = medium; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<border-width>  |  inherit" ; 
 percentages = no; 
 propertyName = border-right-width; 
}, { 
 initialValue = show; 
 media = ( visual); 
 appliesTo = "\''table-cell\'' elements" ; 
 valueString = "show | hide |  inherit" ; 
 percentages = no; 
 propertyName = empty-cells; 
}, { 
 initialValue = none; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "<uri>  | none |  inherit" ; 
 percentages = no; 
 propertyName = cue-after; 
}, { 
 initialValue = none; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "code | none |  inherit" ; 
 percentages = no; 
 propertyName = speak-punctuation; 
}, 
{ 
 initialValue = XX; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<margin-width> {1,4} |  inherit" ; 
 percentages = "refer to width of containing block" ; 
 propertyName = margin; 
}, { 
 initialValue = none; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<number>  | none |  inherit" ; 
 percentages = no; 
 propertyName = font-size-adjust; 
}, { 
 initialValue = baseline; 
 media = ( visual); 
 appliesTo = "inline-level and \''table-cell\'' elements" ; 
 valueString = "baseline | sub | super | top | text-top | middle |     bottom | text-bottom |  <percentage>  |  <length>  |  inherit" ; 
 percentages = "refer to the \''line-height\'' of the element itself" ; 
 propertyName = vertical-align; 
}, { 
 initialValue = "see individual properties" ; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "[  \''border-top-width\''  ||  \''border-style\''  ||  <color>  ] |  inherit" ; 
 percentages = no; 
 propertyName = border-right; 
}, { 
 initialValue = 50; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "<number>  |  inherit" ; 
 percentages = no; 
 propertyName = pitch-range; 
}, 
{ 
 initialValue = inherit; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "visible | hidden | collapse |  inherit" ; 
 percentages = no; 
 propertyName = visibility; 
}, { 
 initialValue = medium; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "<number>  |  <percentage>  | silent | x-soft | soft | medium | loud | x-loud |  inherit" ; 
 percentages = "refer to inherited value" ; 
 propertyName = volume; 
}, { 
 initialValue = normal; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "normal | italic | oblique |  inherit" ; 
 percentages = no; 
 propertyName = font-style; 
}, { 
 initialValue = "depends on user agent" ; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "<time>  |  <percentage>  |  inherit" ; 
 percentages = "see prose" ; 
 propertyName = pause-after; 
}, { 
 initialValue = normal; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "normal |  <length>  |  inherit" ; 
 percentages = no; 
 propertyName = word-spacing; 
}, 
{ 
 initialValue = 0; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<margin-width>  |  inherit" ; 
 percentages = "refer to width of containing block" ; 
 propertyName = margin-bottom; 
}, { 
 initialValue = "the value of the \''color\'' property" ; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<color>  |  inherit" ; 
 percentages = no; 
 propertyName = border-top-color; 
}, { 
 initialValue = none; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<border-style>  |  inherit" ; 
 percentages = no; 
 propertyName = border-right-style; 
}, { 
 initialValue = "see individual properties" ; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "[  \''border-top-width\''  ||  \''border-style\''  ||  <color>  ] |  inherit" ; 
 percentages = no; 
 propertyName = border-bottom; 
}, { 
 initialValue = medium; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<border-width>  |  inherit" ; 
 percentages = no; 
 propertyName = border-top-width; 
}, 
{ 
 initialValue = none; 
 media = ( visual); 
 appliesTo = "all elements except non-replaced inline elements and table elements" ; 
 valueString = "<length>  |  <percentage>  | none |  inherit" ; 
 percentages = "refer to height of containing block" ; 
 propertyName = max-height; 
}, { 
 initialValue = 0; 
 media = ( visual); 
 appliesTo = "block-level elements" ; 
 valueString = "<length>  |  <percentage>  |  inherit" ; 
 percentages = "refer to width of containing block" ; 
 propertyName = text-indent; 
}, { 
 initialValue = normal; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "normal | wider | narrower | ultra-condensed | extra-condensed | condensed | semi-condensed  | semi-expanded | expanded | extra-expanded |     ultra-expanded |  inherit" ; 
 percentages = no; 
 propertyName = font-stretch; 
}, { 
 initialValue = XX; 
 media = ( visual); 
 appliesTo = "elements with \''display: list-item\''" ; 
 valueString = "[  \''list-style-type\''  ||  \''list-style-position\''  ||  \''list-style-image\''  ] |  inherit" ; 
 percentages = no; 
 propertyName = list-style; 
}, { 
 initialValue = auto; 
 media = ( visual, paged); 
 appliesTo = "the page context" ; 
 valueString = "<length> {1,2} | auto | portrait | landscape |  inherit" ; 
 percentages = no; 
 propertyName = size; 
}, 
{ 
 initialValue = 0; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<padding-width>  |  inherit" ; 
 percentages = "refer to width of containing block" ; 
 propertyName = padding-right; 
}, { 
 initialValue = normal; 
 media = ( visual); 
 appliesTo = "all elements, but see prose" ; 
 valueString = "normal | embed | bidi-override |  inherit" ; 
 percentages = no; 
 propertyName = unicode-bidi; 
}, { 
 initialValue = "the value of the \''color\'' property" ; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<color>  |  inherit" ; 
 percentages = no; 
 propertyName = border-left-color; 
}, { 
 initialValue = medium; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<border-width>  |  inherit" ; 
 percentages = no; 
 propertyName = border-left-width; 
}, { 
 initialValue = auto; 
 media = ( visual); 
 appliesTo = "all elements but non-replaced inline elements, table columns, and column groups" ; 
 valueString = "<length>  |  <percentage>  | auto |  inherit" ; 
 percentages = "see prose" ; 
 propertyName = height; 
}, 
{ 
 initialValue = center; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "<angle>  | [[ left-side | far-left | left | center-left | center | center-right | right | far-right | right-side ] || behind ] | leftwards | rightwards |  inherit" ; 
 percentages = no; 
 propertyName = azimuth; 
}, { 
 initialValue = collapse; 
 media = ( visual); 
 appliesTo = "\''table\'' and \''inline-table\'' elements" ; 
 valueString = "collapse | separate |  inherit" ; 
 percentages = no; 
 propertyName = border-collapse; 
}, { 
 initialValue = medium; 
 media = ( visual, interactive); 
 appliesTo = all; 
 valueString = "<border-width>  |  inherit" ; 
 percentages = no; 
 propertyName = outline-width; 
}, { 
 initialValue = medium; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "<frequency>  | x-low | low | medium | high | x-high |  inherit" ; 
 percentages = no; 
 propertyName = pitch; 
}, { 
 initialValue = static; 
 media = ( visual); 
 appliesTo = "all elements, but not to generated content" ; 
 valueString = "static | relative | absolute | fixed |  inherit" ; 
 percentages = no; 
 propertyName = position; 
}, 
{ 
 initialValue = none; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "none | [ <color>  || [ <length>{2,3} ,]]* [ <color>  ||  <length>{2,3}] |  inherit" ; 
 percentages = no; 
 propertyName = text-shadow; 
}, { 
 initialValue = none; 
 media = ( all); 
 appliesTo = all; 
 valueString = "[  <identifier> <integer> ? ]+ | none |  inherit" ; 
 percentages = no; 
 propertyName = counter-reset; 
}, { 
 initialValue = 0; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<margin-width>  |  inherit" ; 
 percentages = "refer to width of containing block" ; 
 propertyName = margin-right; 
}, { 
 initialValue = "depends on user agent" ; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "<time>  |  <percentage>  |  inherit" ; 
 percentages = "see prose" ; 
 propertyName = pause-before; 
}, { 
 initialValue = none; 
 media = ( visual); 
 appliesTo = "all elements except non-replaced inline elements and table  elements" ; 
 valueString = "<length>  |  <percentage>  | none |  inherit" ; 
 percentages = "refer to width of containing block" ; 
 propertyName = max-width; 
}, 
{ 
 initialValue = none; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<border-style>  |  inherit" ; 
 percentages = no; 
 propertyName = border-left-style; 
}, { 
 initialValue = scroll; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "scroll | fixed |  inherit" ; 
 percentages = no; 
 propertyName = background-attachment; 
}, { 
 initialValue = none; 
 media = ( visual, interactive); 
 appliesTo = all; 
 valueString = "<border-style>  |  inherit" ; 
 percentages = no; 
 propertyName = outline-style; 
}, { 
 initialValue = top; 
 media = ( visual); 
 appliesTo = "\''table-caption\'' elements" ; 
 valueString = "top | bottom | left | right |  inherit" ; 
 percentages = no; 
 propertyName = caption-side; 
}, { 
 initialValue = "depends on user agent" ; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "[[ <specific-voice>   |  <generic-voice>  ],]* [ <specific-voice>   |  <generic-voice>  ] |  inherit" ; 
 percentages = no; 
 propertyName = voice-family; 
}, 
{ 
 initialValue = auto; 
 media = ( visual); 
 appliesTo = "positioned elements" ; 
 valueString = "<length>  |  <percentage>  | auto |  inherit" ; 
 percentages = "refer to height of containing block" ; 
 propertyName = bottom; 
}, { 
 initialValue = normal; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "normal |  <length>  |  inherit" ; 
 percentages = no; 
 propertyName = letter-spacing; 
}, { 
 initialValue = "see individual properties" ; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "[ [  \''font-style\''  ||  \''font-variant\''  ||  \''font-weight\''  ]?  \''font-size\''  [ /  \''line-height\''  ]?  \''font-family\''  ] | caption | icon | menu | message-box | small-caption | status-bar |  inherit" ; 
 percentages = "allowed on \''font-size\'' and \''line-height\''" ; 
 propertyName = font; 
}, { 
 initialValue = 0; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<padding-width>  |  inherit" ; 
 percentages = "refer to width of containing block" ; 
 propertyName = padding-top; 
}, { 
 initialValue = 0; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<padding-width>  |  inherit" ; 
 percentages = "refer to width of containing block" ; 
 propertyName = padding-left; 
}, 
{ 
 initialValue = "see individual properties" ; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "[  \''border-top-width\''  ||  \''border-style\''  ||  <color>  ] |  inherit" ; 
 percentages = no; 
 propertyName = border-left; 
}, { 
 initialValue = 0; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<padding-width>  |  inherit" ; 
 percentages = "refer to width of containing block" ; 
 propertyName = padding-bottom; 
}, { 
 initialValue = none; 
 media = ( visual); 
 appliesTo = "all but positioned elements and generated content" ; 
 valueString = "left | right | none |  inherit" ; 
 percentages = no; 
 propertyName = float; 
}, { 
 initialValue = "empty string" ; 
 media = ( all); 
 appliesTo = ":before and :after pseudo-elements" ; 
 valueString = "[  <string>  |  <uri>  |  <counter>  | <attr-x> | open-quote | close-quote | no-open-quote | no-close-quote ]+ |  inherit" ; 
 percentages = no; 
 propertyName = content; 
}, { 
 initialValue = auto; 
 media = ( visual); 
 appliesTo = "positioned elements" ; 
 valueString = "<length>  |  <percentage>  | auto |  inherit" ; 
 percentages = "refer to width of containing block" ; 
 propertyName = left; 
}, 
{ 
 initialValue = once; 
 media = ( aural); 
 appliesTo = "elements that have table header information" ; 
 valueString = "once | always |  inherit" ; 
 percentages = no; 
 propertyName = speak-header; 
}, { 
 initialValue = auto; 
 media = ( visual); 
 appliesTo = "elements with \''display: marker\''" ; 
 valueString = "<length>  | auto |  inherit" ; 
 percentages = no; 
 propertyName = marker-offset; 
}, { 
 initialValue = level; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "<angle>   | below | level | above | higher | lower |  inherit" ; 
 percentages = no; 
 propertyName = elevation; 
}, { 
 initialValue = "depends on user agent" ; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "[ [ <time>  |  <percentage> ]{1,2} ] |  inherit" ; 
 percentages = "see descriptions of \''pause-before\'' and \''pause-after\''" ; 
 propertyName = pause; 
}, { 
 initialValue = auto; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "<uri>  mix? repeat? | auto | none |  inherit" ; 
 percentages = no; 
 propertyName = play-during; 
}, 
{ 
 initialValue = continuous; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "digits | continuous |  inherit" ; 
 percentages = no; 
 propertyName = speak-numeral; 
}, { 
 initialValue = none; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "none | [ underline || overline || line-through || blink ] |  inherit" ; 
 percentages = no; 
 propertyName = text-decoration; 
}, { 
 initialValue = invert; 
 media = ( visual, interactive); 
 appliesTo = all; 
 valueString = "<color>  | invert |  inherit" ; 
 percentages = no; 
 propertyName = outline-color; 
}, { 
 initialValue = "depends on user agent" ; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "[ <string> <string> ]+ | none |  inherit" ; 
 percentages = no; 
 propertyName = quotes; 
}, { 
 initialValue = repeat; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "repeat-x | repeat-y | no-repeat | repeat |  inherit" ; 
 percentages = no; 
 propertyName = background-repeat; 
}, 
{ 
 initialValue = "0% 0%" ; 
 media = ( visual); 
 appliesTo = "block-level and replaced elements" ; 
 valueString = "[ [ <percentage>  |  <length>  ]{1,2} |  [ [top | center | bottom] || [left | center | right] ] ] |  inherit" ; 
 percentages = "refer to the size of the box itself" ; 
 propertyName = background-position; 
}, { 
 initialValue = 0; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<margin-width>  |  inherit" ; 
 percentages = "refer to width of containing block" ; 
 propertyName = margin-left; 
}, { 
 initialValue = auto; 
 media = ( visual, paged); 
 appliesTo = "block-level elements" ; 
 valueString = "avoid | auto |  inherit" ; 
 percentages = no; 
 propertyName = page-break-inside; 
}, { 
 initialValue = 50; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "<number>  |  inherit" ; 
 percentages = no; 
 propertyName = stress; 
}, { 
 initialValue = auto; 
 media = ( visual); 
 appliesTo = "positioned elements" ; 
 valueString = "auto |  <integer>  |  inherit" ; 
 percentages = no; 
 propertyName = z-index; 
}, 
{ 
 initialValue = none; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<uri>  | none |  inherit" ; 
 percentages = no; 
 propertyName = background-image; 
}, { 
 initialValue = visible; 
 media = ( visual); 
 appliesTo = "block-level and replaced elements" ; 
 valueString = "visible | hidden | scroll | auto |  inherit" ; 
 percentages = no; 
 propertyName = overflow; 
}, { 
 initialValue = "see individual properties" ; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "[  \''border-width\''  ||  \''border-style\''  ||  <color>  ] |  inherit" ; 
 percentages = no; 
 propertyName = border; 
}, { 
 initialValue = none; 
 media = ( visual, paged); 
 appliesTo = "page context" ; 
 valueString = "[ crop || cross ] | none |  inherit" ; 
 percentages = no; 
 propertyName = marks; 
}, { 
 initialValue = none; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "capitalize | uppercase | lowercase | none |  inherit" ; 
 percentages = no; 
 propertyName = text-transform; 
}, 
{ 
 initialValue = none; 
 media = ( visual); 
 appliesTo = "elements with \''display: list-item\''" ; 
 valueString = "<uri>  | none |  inherit" ; 
 percentages = no; 
 propertyName = list-style-image; 
}, { 
 initialValue = none; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "<uri>  | none |  inherit" ; 
 percentages = no; 
 propertyName = cue-before; 
}, { 
 initialValue = "depends on user agent" ; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "[[  <family-name>   |  <generic-family>  ],]* [ <family-name>   |  <generic-family> ] |  inherit" ; 
 percentages = no; 
 propertyName = font-family; 
}, { 
 initialValue = transparent; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<color>  | transparent |  inherit" ; 
 percentages = no; 
 propertyName = background-color; 
}, { 
 initialValue = medium; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "<number>   | x-slow | slow | medium | fast | x-fast | faster | slower |  inherit" ; 
 percentages = no; 
 propertyName = speech-rate; 
}, 
{ 
 initialValue = none; 
 media = ( visual); 
 appliesTo = all; 
 valueString = "<border-style>  |  inherit" ; 
 percentages = no; 
 propertyName = border-bottom-style; 
}, { 
 initialValue = 50; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "<number>  |  inherit" ; 
 percentages = no; 
 propertyName = richness; 
}, { 
 initialValue = "UA dependent" ; 
 media = ( visual); 
 appliesTo = "all elements except non-replaced inline elements and table elements" ; 
 valueString = "<length>  |  <percentage>  |  inherit" ; 
 percentages = "refer to width of containing block" ; 
 propertyName = min-width; 
}, { 
 initialValue = auto; 
 media = ( visual); 
 appliesTo = "positioned elements" ; 
 valueString = "<length>  |  <percentage>  | auto |  inherit" ; 
 percentages = "refer to height of containing block" ; 
 propertyName = top; 
}, { 
 initialValue = XX; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "[  \''cue-before\''  ||  \''cue-after\''  ] |  inherit" ; 
 percentages = no; 
 propertyName = cue; 
}, 
{ 
 initialValue = 2; 
 media = ( visual, paged); 
 appliesTo = "block-level elements" ; 
 valueString = "<integer>  |  inherit" ; 
 percentages = no; 
 propertyName = orphans; 
}, { 
 initialValue = normal; 
 media = ( aural); 
 appliesTo = all; 
 valueString = "normal | none | spell-out |  inherit" ; 
 percentages = no; 
 propertyName = speak; 
})'