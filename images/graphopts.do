sysuse auto.dta , clear

global graph_opts ///
  title(, justification(left) color(black) span pos(11)) ///
  graphregion(color(white)) ///
  xscale(noline) xtit(,placement(left) justification(left)) ///
  yscale(noline) ylab(,angle(0) nogrid) ///
  legend(region(lc(none) fc(none)))

scatter price mpg, ///
  ${graph_opts}
  graph draw , ysize(7)
  graph export "scatter.png" , width(4000) replace