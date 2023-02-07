/*
This do file contains solution code for exercises and examples that require coding (so not the exercises that use the visual graph menu and editor nor for those where complete code is
given in the handout/web page.) 
*/
/*
Exercise 1
Import the data from

https://www.ucl.ac.uk/~ccaajim/medtrial.csv"
using the Stata procedure import delimited.

Use the following code to add value labels to the variable gender:

 label define genderl 1 "Male" 2 "Female"
 label values gender genderl
Use the commands desc and codebook to examine the data set.

Use the Stata grahics menu to make the following plots:

a pie chart of frequencies of gender
a bar chart of frequencies of smoker
a histogram of hbefore
a histogram of hafter with subplots by gender
*/

import delimited https://www.ucl.ac.uk/~ccaajim/medtrial.csv, clear

label define genderl 1 "Male" 2 "Female"
label values gender genderl

desc
codebook

graph pie, over(gender)
graph bar, over(smoker)
hist hbefore
hist hafter, by(gender)

/*
Exercise 2

Using the data in the file medtrial.csv on **https://www.ucl.ac.uk/~ccaajim/", create a box plot of the variablehafter.

Use the option nooutsides to block the graphing of extreme values for the plot of hafter.
*/

import delimited https://www.ucl.ac.uk/~ccaajim/medtrial.csv, clear

graph box hafter, nooutsides

/*
Exercise 3

Using the medtrial data set, create a box plot of each of hbefore and hafter.

Add to each the title "Plasma concentrations of H", with the appropriate subtitle indicating whether the measure is pre or post treatment.
*/

graph box hbefore, title("Plasma concentrations of H") subtitle("Before treatment")
graph box hafter, title("Plasma concentrations of H") subtitle("After treatment")

/*
Exercise 4

Produce one graph showing box plots for `hbefore` and `hafter` with appropriate title, for each level of `gender` and differentiating the groups using color.

*/

graph box hbefore, title(Range of hbefore and hafter) over(gender) over(smoker) asyvars

/*
Exercise 5

Create a scatter plot of hbefore against hafter and label the data points surname only where
the subject is male
*/
gen surname2 = surname if gender==1
scatter hbefore hafter , mlabel(surname2)

/*
Scatter plot example
*/
sysuse auto, clear

separate mpg, by(rep)

scatter mpg? weight, ///
    msymbol(O D T S X) ///
    title("Miles per gallon as a function of Weight") ///
    subtitle("Showing a plausibly strong, negative relationship") ///
    plotregion(fcolor(bluishgray))

/*

Exercise 6

Using the medtrial data, seperate the data in hafter by smoker. Make a scatter plot of the new hafter? variables against hbefore.

Apply different marker symbols to the two data groups. Add an appropriate title.

*/

import delimited https://www.ucl.ac.uk/~ccaajim/medtrial.csv, clear

separate hafter, by(smoker)

scatter hafter? hbefore, ///
	msymbol(D S) ///
	title("Hafter plotted against Hbefore with indication of smoker status")
	






