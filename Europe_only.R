# 3: European countries only

# THRIFT
# Baseline C
thrift.europe.tobit.c <- tobit(savingrate ~ thrift_prop + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, left = 0, data = thrift.europe)
summary(thrift.europe.tobit.c)


### Wealth Accumulation
# Baseline C
wealth.europe.tobit.c <- tobit(savingrate ~ rescaled_wealth + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, left = 0, data = wealth.europe)
summary(wealth.europe.tobit.c)


rm(thrift.europe.tobit.c, wealth.europe.tobit.c)
