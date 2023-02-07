sysuse auto, clear

    separate mpg, by(rep)

    label variable mpg1 "Fuel Consumption1"
    label variable mpg2 "Fuel Consumption2"
    label variable mpg3 "Fuel Consumption3"
    label variable mpg4 "Fuel Consumption4"
    label variable mpg5 "Fuel Consumption5"

    scatter mpg? weight, ///
        msymbol(O S D T X) ///
        title("Miles per gallon as a function of Weight") ///
        subtitle("Showing a plausibly strong, negative relationship") ///
        plotregion(fcolor(bluishgray)) ///
        scheme(plottig)
