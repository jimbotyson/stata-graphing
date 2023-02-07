 sysuse auto

    graph box mpg, ///
      title("A Simple Box Plot", position(12) ring(1)) ///
      note("In later graphs we will subset the data.") ///
      caption("This is the caption for our first graph.", ring(1)) ///
      subtitle("There are two groups in this graph.", ring(0)) ///
	  over(rep78) ///
      over(foreign) ///
      ylabel(,nogrid noticks) ///
      asyvars 