running
test01DontDisplayScript
	"Test that script tags are not displayed"
	
	| formatted input |
	input := ReadStream on:
		 '<script>
			var test="Hello";
		</script>
		Lorem ipsum'.
		
	formatted := (HtmlParser parse: input) formattedText.
	
	self assert: (formatted = 'Lorem ipsum').