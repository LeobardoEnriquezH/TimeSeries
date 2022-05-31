import delimited "C:\Users\Leobardo\Downloads\oil.csv", varnames(1) numericcols(2 3 4 5 6) 
generate date=tm(2017m1)+_n-1
list date in 1/5
format %tm date
list date in 1/5
tsset date
twoway (line price date, lcolor(blue) lpattern(solid)) (scatter forecast date) (scatter v4 date) (scatter lower date) (scatter upper date)

