Running these scripts requires accessing the [National Corrections Report Program](http://www.icpsr.umich.edu/icpsrweb/content/NACJD/guides/ncrp.html) through the 
[National Archive of Criminal Justice Data](https://www.icpsr.umich.edu/icpsrweb/NACJD/index.jsp). 

`combine.r` merges the Term Record file with the Prison Admissions records.

`export.rmd` groups by admissions by county, calculating the per capita admission rate with population numbers from the census.  

`valid-states.csv` indicates if a given state's admissions in NCRP are within ~20% of the [National Prisoner Statics Program](http://www.bjs.gov/index.cfm?ty=dcdetail&iid=269) or the state's own Department of Corrections. Invalid states were exclude from our analysis. 