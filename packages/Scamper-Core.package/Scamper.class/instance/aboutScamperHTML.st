browser urls
aboutScamperHTML
	"return a string of HTML which introduces Scamper"
	^'
<html>
<head>
<title>{1}</title>
</head>
<body>
<h1>{2}</h1>
{3}
<ul>
<li><a href="http://minnow.cc.gatech.edu/squeak">{4}</a>
<li><a href="http://minnow.cc.gatech.edu/squeak/14">{5}</a>
<li><a href="http://www.squeak.org">{6}</a>
<li><a href="http://www.squeakland.org">{7}</a>
</ul>
</body>
</html>' format:{
	'About Scamper' translated.
	'Scamper' translated.
	'This is Scamper, a WWW browser for Squeak.  Here are some URL''s to start at:' translated.
	'The Squeak Swiki' translated.
	'Scamper''s Home Page' translated.
	'Squeak''s Home Page' translated.
	'The SqueakLand Home Page' translated
	}