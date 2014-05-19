I am a parsed CSS rule with selector and dictionary of attributes.

<Foo>
    Value of type Foo. Common types are discussed on the Units page.
Foo
    A keyword that must appear literally (though without case sensitivity). Commas and slashes must also appear literally.
A B C
    A must occur, then B, then C, in that order.
A | B
    A or B must occur.
A || B
    A or B or both must occur, in any order.
[ Foo ]
    Brackets are used to group items together.
Foo*
    Foo is repeated zero or more times.
Foo+
    Foo is repeated one or more times.
Foo?
    Foo is optional.
Foo{A,B}
    Foo must occur at least A times and at most B times. 