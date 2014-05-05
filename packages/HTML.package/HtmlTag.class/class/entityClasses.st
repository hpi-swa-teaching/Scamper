parser support
entityClasses
	"a Dictionary mapping tag names into the correct entity class"
	"EntityClasses _ nil"

	EntityClasses isNil ifFalse: [ ^EntityClasses ].

	EntityClasses := Dictionary new.

	#( 
		frameset	HtmlFrame
		frame	HtmlFrame

		title		HtmlTitle
		style	HtmlStyle
		meta	HtmlMeta

		p		HtmlParagraph
		form	HtmlForm
		blockquote	HtmlBlockQuote

		input	HtmlInput
		textarea	HtmlTextArea
		select	HtmlSelect
		optgroup	HtmlOptionGroup
		option		HtmlOption

		img		HtmlImage
		embed	HtmlEmbedded
		noembed	HtmlNoEmbed
		a		HtmlAnchor
		br		HtmlBreak

		map	HtmlMap
		area	HtmlArea

		li		HtmlListItem
		dd		HtmlDefinitionDefinition
		dt		HtmlDefinitionTerm

		ol		HtmlOrderedList
		ul		HtmlUnorderedList
		dl		HtmlDefinitionList

		h1		HtmlHeader
		h2		HtmlHeader
		h3		HtmlHeader
		h4		HtmlHeader
		h5		HtmlHeader
		h6		HtmlHeader

		hr		HtmlHorizontalRule

		strong	HtmlBoldEntity
		b		HtmlBoldEntity

		em		HtmlItalicsEntity
		i		HtmlItalicsEntity
		dfn 	HtmlItalicsEntity

		u		HtmlUnderlineEntity 

		tt		HtmlFixedWidthEntity
		kbd		HtmlFixedWidthEntity		

		strike	HtmlStrikeEntity

		big		HtmlBiggerFontEntity
		small	HtmlSmallerFontEntity

		sub		HtmlSubscript
		sup		HtmlSuperscript

		font	HtmlFontEntity

		pre		HtmlPreformattedRegion
 
		table	HtmlTable
		tr		HtmlTableRow
		td		HtmlTableDataItem 
		th		HtmlTableHeader
				
		script	HtmlScript
		) pairsDo: [ 
			:tagName :className |
			EntityClasses at: tagName asString put: (Smalltalk at: className) ].

	^EntityClasses 