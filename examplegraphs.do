sysuse auto, clear

/*
graph box mpg, ///
  title("A Simple Box Plot") ///
  subtitle("There are two groups in this graph.") ///
  over(foreign) ///
  asyvars ///
  graphregion(fcolor(gs13)) ///
  plotregion(fcolor(cranberry)) ///
  plotregion(icolor(ltblue))
  
graph export "C:\Users\DELL\Documents\Data\Stata\TablesTutorial\StataGraphing\mgpbox6.png", as(png)
*/  
putdocx begin
putdocx paragraph
/*putdocx text( "Introduction to exporting graphs"), style(Heading1)
putdocx paragraph */
putdocx text("This is a box plot created by this script")

graph box mpg, ///
  title("A Simple Box Plot") ///
  subtitle("There are two groups in this graph.") ///
  over(foreign) ///
  asyvars ///
  graphregion(fcolor(gs13)) ///
  plotregion(fcolor(cranberry)) ///
  plotregion(icolor(ltblue))
  
graph export "C:\Users\DELL\Documents\Data\Stata\TablesTutorial\StataGraphing\mgpbox7.png", as(png)
putdocx image mpgbox7.png
