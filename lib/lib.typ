// Beginning spiel
#let preamble(
	class: "",
	quiz_no: 0,
	time_limit: 0,
) = {
	grid(
        columns: 2,
        gutter: 1fr,
        align(left)[
            *#class: Quiz #quiz_no*
        ],
        align(right)[
			*Time: #time_limit Minutes*
        ]
    )
	[
		By writing my name on this sheet, I certify that all the work on this quiz is mine alone, and that I will abide by the honor code as printed.
	
		#v(-1%)	

		#quote(block: true, attribution: [Student Honor Code])[
			As a student of The University of Texas at Austin, I shall abide by the core values of the University and uphold academic integrity.
		]

		#v(2%)

		*Name:*

		#v(2%)

		*Signature:*
	]
	pagebreak()
}

// Outer label for a question
#let question(points: 0, body) = {
	if points == 1 [
		(#points point)		
	] else [
		(#points points)		
	]
	set enum(numbering: "(a)")
  	body
}

// Part of a question
// e.g., a, b, c, ...
#let part(points: 0, space: 0%, body) = {
	if points == 1 [
		(#points point)		
	] else [
		(#points points)		
	]
  	body
	v(space)
}
