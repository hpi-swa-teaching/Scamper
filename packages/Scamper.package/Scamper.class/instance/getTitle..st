not yet categorized
getTitle: aHTMLDocument
  "Get title of HTMLDocument"
  
  | a b leftOffset rightOffset|
  
  leftOffset := 7.
  rightOffset := 1.
  a := document asString findString: '<title>'.
  b := document asString findString: '</title>'.
  ^document asString copyFrom: (a+leftOffset) to: (b-rightOffset).