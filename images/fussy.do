sysuse auto, clear

graph box mpg, ///
	  title("A Simple Box Plot") ///
	  subtitle("There are two groups in this graph.") ///
	  over(foreign) ///
	  asyvars ///
	  nooutsides ///
	  graphregion(fcolor(gs13)) ///
	  plotregion(fcolor(cranberry)) ///
	  plotregion(icolor(ltblue))