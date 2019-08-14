# 7: OLS model

# THRIFT
# Baseline A
thrift.ols <- lm(savingrate ~ thrift_prop, data = thriftfinal)
summary(thrift.ols)

# Baseline B
thrift.ols.b <- lm(savingrate ~ thrift_prop + age_quint + female + syear, data = thriftfinal)
summary(thrift.ols.b)

# Baseline C
thrift.ols.c <- lm(savingrate ~ thrift_prop + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, data = thriftfinal)
summary(thrift.ols.c)


# wealth
# Baseline A
wealth.ols <- lm(savingrate ~ rescaled_wealth, data = wealthfinal)
summary(wealth.ols)

# Baseline B
wealth.ols.b <- lm(savingrate ~ rescaled_wealth + age_quint + female + syear, data = wealthfinal)
summary(wealth.ols.b)

# Baseline C
wealth.ols.c <- lm(savingrate ~ rescaled_wealth + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                   + adults, data = wealthfinal)
summary(wealth.ols.c)


# indulgenceSVS
# Baseline A
indulgenceSVS.ols <- lm(savingrate ~ rescaled_indulg, data = indulgenceSVSfinal)
summary(indulgenceSVS.ols)

# Baseline B
indulgenceSVS.ols.b <- lm(savingrate ~ rescaled_indulg + age_quint + female + syear, data = indulgenceSVSfinal)
ummary(indulgenceSVS.ols.b)

# Baseline C
indulgenceSVS.ols.c <- lm(savingrate ~ rescaled_indulg + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                   + adults, data = indulgenceSVSfinal)
summary(indulgenceSVS.ols.c)


# indulgenceHof
# Baseline A
indulgenceHof.ols <- lm(savingrate ~ indulg, data = indulgenceHoffinal)
summary(indulgenceHof.ols)

# Baseline B
indulgenceHof.ols.b <- lm(savingrate ~ indulg + age_quint + female + syear, data = indulgenceHoffinal)
summary(indulgenceHof.ols.b)

# Baseline C
indulgenceHof.ols.c <- lm(savingrate ~ indulg + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                   + adults, data = indulgenceHoffinal)
summary(indulgenceHof.ols.c)


# longtermHof
# Baseline A
longtermHof.ols <- lm(savingrate ~ long_term, data = longtermHoffinal)
summary(longtermHof.ols)

# Baseline B
longtermHof.ols.b <- lm(savingrate ~ long_term + age_quint + female + syear, data = longtermHoffinal)
summary(longtermHof.ols.b)

# Baseline C
longtermHof.ols.c <- lm(savingrate ~ long_term + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                   + adults, data = longtermHoffinal)
summary(longtermHof.ols.c)


# uncavoidHof
# Baseline A
uncavoidHof.ols <- lm(savingrate ~ unc_avoid, data = uncavoidHoffinal)
summary(uncavoidHof.ols)

# Baseline B
uncavoidHof.ols.b <- lm(savingrate ~ unc_avoid + age_quint + female + syear, data = uncavoidHoffinal)
summary(uncavoidHof.ols.b)

# Baseline C
uncavoidHof.ols.c <- lm(savingrate ~ unc_avoid + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                   + adults, data = uncavoidHoffinal)
summary(uncavoidHof.ols.c)


# Remove unnecessary objects from workspace
rm(thrift.ols, thrift.ols.b, thrift.ols.c, wealth.ols, wealth.ols.b, wealth.ols.c, indulgenceSVS.ols, indulgenceSVS.ols.b, 
   indulgenceSVS.ols.c, indulgenceHof.ols, indulgenceHof.ols.b, indulgenceHof.ols.c, longtermHof.ols, longtermHof.ols.b, longtermHof.ols.c, 
   uncavoidHof.ols, uncavoidHof.ols.b, uncavoidHof.ols.c)


