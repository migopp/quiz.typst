#import "lib.typ": *

// --- config ---
#set par(justify: true)
#set text(font: "New Computer Modern Math")
#set page(
	margin: (x: 1.0cm, y: 1.2cm),
)
#set text(
	size: 12pt,
)
// https://gist.github.com/floffy-f/9c9fbcc2889116b5f2faced008611cf1
#show quote.where(block: true): q => [
	#block(
		fill: luma(250),
		inset: (left: 3%, y: 10%),
    	radius: (right: 5pt),
    	stroke: (left: 2pt+luma(100)),
		q
	)
]


// --- preamble ---
#preamble(class: "CS439", quiz_no: 1, time_limit: 50)
#pagebreak()

// --- body ---
// --- q1 ---
1. #question(points: 9)[
	Suppose that Dr. Gheith said something one time, and it was really cool. Maybe it was about a surfing penguin, or a comment about how `Java` is bad. Maybe we can have some code block with syntax highlighting with `Java`.

	```Java
	public class OSQuiz {
		public static void main(String args[]) {
			system.out.println("Welcome to CS439!");
		}
	}
	```

	1. #part(points: 1)[
		`Java` is a popular language. Why might it be good?
	]

	#v(10%)

	2. #part(points: 8)[
		Why might it be bad?
	]
]

#pagebreak()

// --- q2 ---
2. #question(points: 1)[
	What is the meaning of life?
]
