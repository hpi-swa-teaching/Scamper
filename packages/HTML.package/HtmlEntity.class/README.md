<html>When HtmlParser runs, it generates a tree whose nodes are in HtmlEntity's subclasses.  There is a separate class for most of the available elements in HTML, though some are grouped together under generic classes like HtmlBoldEntity.

Methods of particular interest when modifying or adding subclasses are:
<ul>
<li>initialize:
<li>mayContain:
<li>addToFormatter:
</ul>
