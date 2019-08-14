### Tobit Model ###

# THRIFT
# Baseline A
thrift.tobit <- tobit(savingrate ~ thrift_prop, left = 0, data = thriftfinal)
summary(thrift.tobit)

# Baseline B
thrift.tobit.b <- tobit(savingrate ~ thrift_prop + age_quint + female + syear, left = 0, data = thriftfinal)
summary(thrift.tobit.b)

# Baseline C
thrift.tobit.c <- tobit(savingrate ~ thrift_prop + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                                + adults, left = 0, data = thriftfinal)

summary(thrift.tobit.c)

# Check number of countries
check.thrift <- na.omit(thriftfinal) %>% select(IOC) %>% distinct() 



### Wealth Accumulation
# Baseline A
wealth.tobit <- tobit(savingrate ~ rescaled_wealth,left = 0, data = wealthfinal)
summary(wealth.tobit)


# Baseline B
wealth.tobit.b <- tobit(savingrate ~ rescaled_wealth + age_quint + female + syear, left = 0, data = wealthfinal)
summary(wealth.tobit.b)


# Baseline C
wealth.tobit.c <- tobit(savingrate ~ rescaled_wealth + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                                + adults, left = 0, data = wealthfinal)

summary(wealth.tobit.c)

# Check number of countries
check.wealth <- na.omit(wealthfinal) %>% select(IOC) %>% distinct() 



### Indulgence (SVS)
# Baseline A
indulg.SVS.tobit <- tobit(savingrate ~ rescaled_indulg,left = 0, data = indulgenceSVSfinal)

summary(indulg.SVS.tobit)


# Baseline B
indulg.SVS.tobit.b <- tobit(savingrate ~ rescaled_indulg + age_quint + female + syear, left = 0, data = indulgenceSVSfinal)
summary(indulg.SVS.tobit.b)


# Baseline C
indulg.SVS.tobit.c <- tobit(savingrate ~ rescaled_indulg + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat
                                    + adults, left = 0, data = indulgenceSVSfinal)

summary(indulg.SVS.tobit.c)

# Check number of countries
check.indulgSVS <- na.omit(indulgenceSVSfinal) %>% select(IOC) %>% distinct() 



### Indulgence (Hofstede)
# Baseline A
indulg.Hof.tobit <- tobit(savingrate ~ indulg,left = 0, data = indulgenceHoffinal)
summary(indulg.Hof.tobit)

# Baseline B
indulg.Hof.tobit.b <- tobit(savingrate ~ indulg + age_quint + female + syear, left = 0, data = indulgenceHoffinal)
summary(indulg.Hof.tobit.b)


# Baseline C
indulg.Hof.tobit.c <- tobit(savingrate ~ indulg + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat + adults, 
                                      left = 0, data = indulgenceHoffinal)

summary(indulg.Hof.tobit.c)

# Check number of countries
check.indulgHof <- na.omit(indulgenceHoffinal) %>% select(IOC) %>% distinct() 




### Long-Term Orientation 
# Baseline A
lto.tobit <- tobit(savingrate ~ long_term,left = 0, data = longtermHoffinal)
summary(lto.tobit)


# Baseline B
lto.tobit.b <- tobit(savingrate ~ long_term + age_quint + female + syear, left = 0, data = longtermHoffinal)
summary(lto.tobit.b)


# Baseline C
lto.tobit.c <- tobit(savingrate ~ long_term + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat + adults, 
                               left = 0, data = longtermHoffinal)

summary(lto.tobit.c)

# Check number of countries
check.longterm <- na.omit(longtermHoffinal) %>% select(IOC) %>% distinct() 



### Uncertainty Avoidance
# Baseline A
unc.avoid.tobit <- tobit(savingrate ~ unc_avoid,left = 0, data = uncavoidHoffinal)
summary(unc.avoid.tobit)


# Baseline B
unc.avoid.tobit.b <- tobit(savingrate ~ unc_avoid + age_quint + female + syear, left = 0, data = uncavoidHoffinal)
summary(unc.avoid.tobit.b)


# Baseline C
unc.avoid.tobit.c <- tobit(savingrate ~ unc_avoid + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                                   + adults, left = 0, data = uncavoidHoffinal)
summary(unc.avoid.tobit.c)


# Check number of countries
check.uncavoid <- na.omit(uncavoidHoffinal) %>% select(IOC) %>% distinct() 



# Remove unnecessary objects from workspace
rm(thrift.tobit, thrift.tobit.b, thrift.tobit.c, check.thrift, wealth.tobit, wealth.tobit.b, wealth.tobit.c, check.wealth, indulg.SVS.tobit, 
   indulg.SVS.tobit.b, indulg.SVS.tobit.c, check.indulgSVS, indulg.Hof.tobit, indulg.Hof.tobit.b, indulg.Hof.tobit.c, check.indulgHof, lto.tobit,  
   lto.tobit.b, lto.tobit.c, check.longterm, unc.avoid.tobit, unc.avoid.tobit.b, unc.avoid.tobit.c, check.uncavoid)

