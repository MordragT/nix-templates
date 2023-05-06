#set par(justify: true)
#set heading(numbering: "1.")
#set page(numbering: "1")
#set document(
    title: "Title",
    author: "Author"    
)
#show link: underline

#outline(title: "Table of contents", depth: 4, indent: true)

= Title <title>

Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

- lorem
- ipsum
- dolor

+ 1
+ 2
+ 3

#figure(
    image("img.png"),
    caption: [
        Some Image
    ]
) <figure>

We can see some stuff in @figure
And we can cite some stuff from the bib format @dependence.
We can also ref some heading before @title

#link("https://example.com")[
    See example.com
]

#numbering("I - I", 140, 16)

$a = 6 + 10 = 16 = 2^4 = 1/1/2^4 = 4/2 * 32/2 ~ 15.999999 in RR$


#circle(radius: 25pt)[
    #set align(center + horizon)
    Circle
]

#figure(
    [
        #set align(start)
        ```rust
        fn main() {
            println!("Some code");
        }
        pub fn add(a: i32, b: i32) -> i32 {
            a + b
        }
        ```
    ],
    caption: [
        Some Rust code
    ]
)

This #strike[is not] relevant.
This is *important*.
This is _recursive_.
This is also #underline[important].
#upper[Flamen]
#lower[Keep calm]
A year#sub[2020] and another#super[2022].

#pagebreak()
#bibliography("literature.yml", style: "ieee")

