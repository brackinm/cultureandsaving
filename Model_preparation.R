# Preparation for model

## Dummy coding for age
age_quintiles <- quantile(finalsample$age, prob = seq(0, 1, length = 6)) # Identify five age groups
age_quintiles # Check numbers

finalsample <- finalsample %>% mutate(age_quint= ifelse(age>51, 5,
                                                        ifelse(age>41, 4,
                                                               ifelse(age>35, 3,
                                                                      ifelse(age>30, 2, 1)))))
# Change to factor
finalsample$age_quint <- as.factor(finalsample$age_quint)
levels(finalsample$age_quint)

## Income deciles
inc_deciles <- quantile(finalsample$curr_inc, prob = seq(0, 1, length = 11), type = 5) # Identify 10 income categories
inc_deciles # Check numbers

finalsample <- finalsample %>% mutate(income_dec= ifelse(curr_inc > 4603.4235,10, ifelse(curr_inc > 3991.2468,9, ifelse(curr_inc > 3563.0161, 8, 
                                                        ifelse(curr_inc > 3203.5224,7, ifelse(curr_inc > 2874.9933,6, ifelse(curr_inc > 2547.0310,5,
                                                              ifelse(curr_inc > 2260.1733,4, ifelse(curr_inc > 1947.7654,3, ifelse(curr_inc > 1502.9285,2,1))))))))))
# Change to factor
finalsample$income_dec <- as.factor(finalsample$income_dec)
levels(finalsample$income_dec)

# Permanent income deciles
perm_inc_deciles <- quantile(finalsample$perm_inc, prob = seq(0, 1, length = 11), type = 5) # Identify 10 permanent income categories
perm_inc_deciles # Check numbers

finalsample <- finalsample %>% mutate(perm_income_dec= ifelse(perm_inc > 4401.3310,10, ifelse(perm_inc > 3769.8376,9, ifelse(perm_inc > 3287.4112, 8, 
                                                              ifelse(perm_inc > 2956.5557,7, ifelse(perm_inc > 2584.3369,6, ifelse(perm_inc > 2282.9387,5,
                                                                      ifelse(perm_inc > 2047.5721,4, ifelse(perm_inc > 1824.5791,3, ifelse(perm_inc > 1393.7541,2,1))))))))))
# Change to factor
finalsample$perm_income_dec <- as.factor(finalsample$perm_income_dec)
levels(finalsample$perm_income_dec)

# Add to final data frames
dummycodes <- finalsample %>% select(hid, pid, syear, age_quint, income_dec, perm_income_dec)

thriftfinal <- left_join(thriftfinal, dummycodes)
wealthfinal <- left_join(wealthfinal, dummycodes)
indulgenceSVSfinal <- left_join(indulgenceSVSfinal, dummycodes)
indulgenceHoffinal <- left_join(indulgenceHoffinal, dummycodes)
longtermHoffinal <- left_join(longtermHoffinal, dummycodes)
uncavoidHoffinal <- left_join(uncavoidHoffinal, dummycodes)

belongSVSfinal <- left_join(belongSVSfinal, dummycodes)
collectfinal <- left_join(collectfinal, dummycodes)
trustfinal <- left_join(trustfinal, dummycodes)

