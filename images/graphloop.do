import delimited "https://www.ucl.ac.uk/~ccaajim/results.csv", clear

local exams "maths english history"

foreach exam in `exams' {
	graph box `exam' 
	graph export  "`exam'.png", replace
}