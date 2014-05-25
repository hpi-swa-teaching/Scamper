start page
startPage
	"return the contents of the user's personal start page"
	| file |
	file := FileStream oldFileOrNoneNamed: 'StartPage.html'.
	file 
		ifNil: [ ^'<title>{1}</title>
<h1>{1}</h1>
{2}' format:{'Personal Start Page' translated. 'This space is empty' translated} ]
		ifNotNil: [ ^file contentsOfEntireFile ]