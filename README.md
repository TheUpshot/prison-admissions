# prison-admissions

Per capita prision admission by county, used in [This small Indiana county sends more people to prison than San Francisco and Durham, N.C., combined. Why?
](http://www.nytimes.com/2016/09/02/upshot/new-geography-of-prisons.html)

The [National Corrections Reporting Program](http://www.icpsr.umich.edu/icpsrweb/NACJD/series/38/studies/36373?archive=NACJD&sortBy=7) was used as the primary source for our analysis.

Admissions include both new sentences and parole violators being readmitted to prison. A prisoner is counted as being from a county based on the location of the court imposing the current sentence - not necessarily the county the prisoner previously resided in.

Some data points are marked as not valid. If less than five prisoners were admitted a year in one county, the actual count was replaced with a N/A to protect their privacy. 

Data from some states were also inconsistent with numbers from the [National Prisoner Statics Program](http://www.bjs.gov/index.cfm?ty=dcdetail&iid=269) and the states's own Department of Corrections. If we couldn't replace it with county level admissions data from states's Department of Corrections, it marked as invalid. 

Finally some states, like Alaska and Delaware, have a unified prison/jail systems and were excluded.

The `NACJD` folder has the code used to count the number of admissions per county, but institutional review board approval is required to access the raw data and run the code. 