# Check: summary statistics

# 1: Saving Rate
saving.rate <- finalsample$savingrate
mean(saving.rate) 
sd(saving.rate) 
max(saving.rate) 
min(saving.rate) 

# 2: Age
age <- finalsample$age
mean(age) 
sd(age) 
max(age) 
min(age) 

# 3: No. of children
no.children <- finalsample$no_kids
mean(no.children) 
sd(no.children) 
max(no.children)
min(no.children) 

# 4: No. of adults
no.adults <- finalsample$adults
mean(no.adults) 
sd(no.adults) 
max(no.adults) 
min(no.adults) 

# 5: Female  
female <- finalsample$female
mean(female) 
max(female) 
min(female) 

# 6: Single 
single <- finalsample %>% mutate(count= ifelse(mar_cat == "single",1,0))
single <- single$count
mean(single) 
max(single) 
min(single) 

# 7: Married 
married <- finalsample %>% mutate(count= ifelse(mar_cat == "married",1,0))
married <- married$count
mean(married) 
max(married) 
min(married) 

# 8: Divorced 
divorced <- finalsample %>% mutate(count= ifelse(mar_cat == "divorced",1,0))
divorced <- divorced$count
mean(divorced) 
max(divorced) 
min(divorced) 

# 9: Widowed 
widowed <- finalsample %>% mutate(count= ifelse(mar_cat == "widowed",1,0))
widowed <- widowed$count
mean(widowed) 
max(widowed) 
min(widowed) 

# 10: Education: inadequate 
inadequate <- finalsample %>% mutate(count= ifelse(educ_cat == "inadequate",1,0))
inadequate <- inadequate$count
mean(inadequate) 
max(inadequate) 
min(inadequate) 

# 11: Education: general elementary 
gen.elem <- finalsample %>% mutate(count= ifelse(educ_cat == "general elem",1,0))
gen.elem <- gen.elem$count
mean(gen.elem) 
max(gen.elem) 
min(gen.elem) 

# 12: Education: middle vocational 
mid.voc <- finalsample %>% mutate(count= ifelse(educ_cat == "middle voc",1,0))
mid.voc <- mid.voc$count
mean(mid.voc) 
max(mid.voc) 
min(mid.voc) 

# 13: Education: vocational or arbitur 
voc.arbit <- finalsample %>% mutate(count= ifelse(educ_cat == "voc plus arbit",1,0))
voc.arbit <- voc.arbit$count
mean(voc.arbit) 
max(voc.arbit) 
min(voc.arbit) 

# 14: Education: higher vocational 
high.voc <- finalsample %>% mutate(count= ifelse(educ_cat == "higher voc",1,0))
high.voc <- high.voc$count
mean(high.voc) 
max(high.voc) 
min(high.voc) 

# 15: Education: higher education 
high.educ <- finalsample %>% mutate(count= ifelse(educ_cat == "higher educ",1,0))
high.educ <- high.educ$count
mean(high.educ) 
max(high.educ) 
min(high.educ) 

# 16: Employment: Employed
employed <- finalsample %>% mutate(count= ifelse(emp_stat == "employed",1,0))
employed <- employed$count
mean(employed) 
max(employed) 
min(employed) 

#17: Employment: Self-Employed
self.employed <- finalsample %>% mutate(count= ifelse(emp_stat == "self employed",1,0))
self.employed <- self.employed$count
mean(self.employed) 
max(self.employed) 
min(self.employed) 

# 18: Employment: Retired
retired <- finalsample %>% mutate(count= ifelse(emp_stat == "retired",1,0))
retired <- retired$count
mean(retired) 
max(retired) 
min(retired) 

# 19: Employment: Not in Labor Force
Not.in.Labor <- finalsample %>% mutate(count= ifelse(emp_stat == "not in labor force",1,0))
Not.in.Labor <- Not.in.Labor$count
mean(Not.in.Labor) 
max(Not.in.Labor) 
min(Not.in.Labor) 

# 20: Employment: Unemployed
unemployed <- finalsample %>% mutate(count= ifelse(emp_stat == "unemployed",1,0))
unemployed <- unemployed$count
mean(unemployed) 
max(unemployed) 
min(unemployed) 

# 21: Employment: Civil Service
Civil.Service <- finalsample %>% mutate(count= ifelse(emp_stat == "civil service",1,0))
Civil.Service <- Civil.Service$count
mean(Civil.Service) 
max(Civil.Service) 
min(Civil.Service) 

# 22: Real net monthly income (in 2010 EUR)
real.income <- finalsample$curr_inc
mean(real.income) 
sd(real.income) 
max(real.income) 
min(real.income) 

# 23: Permanent income 
perm.income <- finalsample$perm_inc
mean(perm.income) 
sd(perm.income) 
max(perm.income) 
min(perm.income) 

rm(age, Civil.Service, divorced, employed, gen.elem, high.educ, high.voc, inadequate, married, mid.voc, no.adults, no.children, Not.in.Labor, real.income,
   perm.income, retired, saving.rate, self.employed, female, single, unemployed, voc.arbit, widowed)
