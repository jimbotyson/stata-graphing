
sysuse auto

graph box mpg, ///
  title("A Simple Box Plot") ///
  subtitle("There are two groups in this graph.") ///
  over(foreign) ///
  ylabel(,nogrid noticks)
  asyvars 
  
  
  ///
  
  
  
  /*scheme(plottig)*/
  
sysuse auto, clear

separate mpg, by(rep) shortlabel

scatter mpg? weight, ///
	title("Miles per gallon as a function of Weight") ///
	subtitle("Showing a plausibly strong, negative relationship") ///
	plotregion(fcolor(bluishgray))///
	scheme(plotplainblind)