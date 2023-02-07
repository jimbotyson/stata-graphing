sysuse auto, replace
cd "c:\Users\DELL\Documents\Data\Stata\TablesTutorial\StataGraphing\"
putdocx clear
putdocx begin

// Create paragraphs
putdocx paragraph
putdocx text ("This is a graph created by a script and exported to Word.")

// Embed a graph
graph box mpg, ///
  title("A Simple Box Plot") ///
  subtitle("There are two groups in this graph.") ///
  over(foreign) ///
  asyvars ///
  graphregion(fcolor(gs13)) ///
  plotregion(fcolor(cranberry)) ///
  plotregion(icolor(ltblue)) //
  ytitle("Miles per Gallon")
  
graph export "C:\Users\DELL\Documents\Data\Stata\TablesTutorial\StataGraphing\mgpbox8.png", as(png)

putdocx image "C:\Users\DELL\Documents\Data\Stata\TablesTutorial\StataGraphing\mgpbox8.png"

putdocx save myreport.docx, replace
