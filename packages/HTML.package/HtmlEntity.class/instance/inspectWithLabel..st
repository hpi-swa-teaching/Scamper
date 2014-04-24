user interface
inspectWithLabel: aLabel
	"Open a HtmlEntityInspector on the receiver. Use basicInspect to get a normal (less useful) type of inspector."

	HtmlEntityInspector openOn: self withEvalPane: true withLabel: aLabel