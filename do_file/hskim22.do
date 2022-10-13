log using hskim22.txt, text replace
program coin, rclass
drop _all
set obs 30
generate x=runiform()
summarize x
return scalar ucoin=r(mean)
end 
set seed 10101
coin
simulate xbar=r(ucoin), seed(10101) reps(400) nodots:coin
summarize xbar
histogram xbar, normal xtitle("400 samples")
