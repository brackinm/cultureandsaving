# Recent Years Included (2015-2017) -- finalsample2

### Tobit Model ###


# THRIFT
# Baseline A
thrift2.tobit <- tobit(savingrate ~ thrift_prop, left = 0, data = thrift2)
summary(thrift2.tobit)

# Baseline B
thrift2.tobit.b <- tobit(savingrate ~ thrift_prop + age_quint + female + syear, left = 0, data = thrift2)
summary(thrift2.tobit.b)

# Baseline C
thrift2.tobit.c <- tobit(savingrate ~ thrift_prop + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, left = 0, data = thrift2)
summary(thrift2.tobit.c)

# Check number of countries
check.thrift2 <- na.omit(thrift2) %>% select(IOC) %>% distinct() 



### Wealth Accumulation
# Baseline A
wealth2.tobit <- tobit(savingrate ~ rescaled_wealth,left = 0, data = wealth2)
summary(wealth2.tobit)

# Baseline B
wealth2.tobit.b <- tobit(savingrate ~ rescaled_wealth + age_quint + female + syear, left = 0, data = wealth2)
summary(wealth2.tobit.b)

# Baseline C
wealth2.tobit.c <- tobit(savingrate ~ rescaled_wealth + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, left = 0, data = wealth2)
summary(wealth2.tobit.c)

# Check number of countries
check.wealth2 <- na.omit(wealth2) %>% select(IOC) %>% distinct() 



### Indulgence (SVS)
# Baseline A
indulgSVS2.tobit <- tobit(savingrate ~ rescaled_indulg,left = 0, data = indulgenceSVS2)
summary(indulgSVS2.tobit)

# Baseline B
indulgSVS2.tobit.b <- tobit(savingrate ~ rescaled_indulg + age_quint + female + syear, left = 0, data = indulgenceSVS2)
summary(indulgSVS2.tobit.b)

# Baseline C
indulgSVS2.tobit.c <- tobit(savingrate ~ rescaled_indulg + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat
                            + adults, left = 0, data = indulgenceSVS2)

summary(indulgSVS2.tobit.c)

# Check number of countries
check.indulgSVS2 <- na.omit(indulgenceSVS2) %>% select(IOC) %>% distinct() 



### Indulgence (Hofstede)
# Baseline A
indulgHof2.tobit <- tobit(savingrate ~ indulg,left = 0, data = indulgenceHof2)
summary(indulgHof2.tobit)

# Baseline B
indulgHof2.tobit.b <- tobit(savingrate ~ indulg + age_quint + female + syear, left = 0, data = indulgenceHof2)
summary(indulgHof2.tobit.b)

# Baseline C
indulgHof2.tobit.c <- tobit(savingrate ~ indulg + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat + adults, 
                            left = 0, data = indulgenceHof2)
summary(indulgHof2.tobit.c)

# Check number of countries
check.indulgHof2 <- na.omit(indulgenceHof2) %>% select(IOC) %>% distinct() 




### Long-Term Orientation 
# Baseline A
lto2.tobit <- tobit(savingrate ~ long_term,left = 0, data = longtermHof2)
summary(lto2.tobit)

# Baseline B
lto2.tobit.b <- tobit(savingrate ~ long_term + age_quint + female + syear, left = 0, data = longtermHof2)
summary(lto2.tobit.b)

# Baseline C
lto2.tobit.c <- tobit(savingrate ~ long_term + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat + adults, 
                     left = 0, data = longtermHof2)
summary(lto2.tobit.c)

# Check number of countries
check.longterm2 <- na.omit(longtermHof2) %>% select(IOC) %>% distinct() 



### Uncertainty Avoidance
# Baseline A
uncavoid2.tobit <- tobit(savingrate ~ unc_avoid,left = 0, data = uncavoidHof2)
summary(uncavoid2.tobit)

# Baseline B
uncavoid2.tobit.b <- tobit(savingrate ~ unc_avoid + age_quint + female + syear, left = 0, data = uncavoidHof2)
summary(uncavoid2.tobit.b)

# Baseline C
uncavoid2.tobit.c <- tobit(savingrate ~ unc_avoid + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                           + adults, left = 0, data = uncavoidHof2)

summary(uncavoid2.tobit.c)

# Check number of countries
check.uncavoid2 <- na.omit(uncavoidHof2) %>% select(IOC) %>% distinct() 



# Remove unnecessary objects from workspace
rm(thrift2.tobit, thrift2.tobit.cluster, thrift2.tobit.b, thrift2.tobit.cluster.b, thrift2.tobit.c, thrift2.tobit.cluster.c, check.thrift2, wealth2.tobit, 
   wealth2.tobit.cluster, wealth2.tobit.b, wealth2.tobit.cluster.b, wealth2.tobit.c, wealth2.tobit.cluster.c, check.wealth2, indulgSVS2.tobit, 
   indulgSVS2.tobit.cluster, indulgSVS2.tobit.b, indulgSVS2.tobit.cluster.b, indulgSVS2.tobit.c, indulgSVS2.tobit.cluster.c, check.indulgSVS2, 
   indulgHof2.tobit, indulgHof2.tobit.cluster, indulgHof2.tobit.b, indulgHof2.tobit.cluster.b, indulgHof2.tobit.c, indulgHof2.tobit.cluster.c, 
   check.indulgHof2, lto2.tobit, lto2.tobit.cluster, lto2.tobit.b, lto2.tobit.cluster.b, lto2.tobit.c, lto2.tobit.cluster.c, check.longterm2, 
   uncavoid2.tobit, uncavoid2.tobit.cluster, uncavoid2.tobit.b, uncavoid2.tobit.cluster.b, uncavoid2.tobit.c, uncavoid2.tobit.cluster.c, check.uncavoid2)

