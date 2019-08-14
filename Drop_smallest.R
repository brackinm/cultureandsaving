# 1: drop smallest countries (<10 observations)

# THRIFT
# Baseline C
thrift.large.tobit.c <- tobit(savingrate ~ thrift_prop + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, left = 0, data = thrift.large)
summary(thrift.large.tobit.c)


### Wealth Accumulation
# Baseline C
wealth.large.tobit.c <- tobit(savingrate ~ rescaled_wealth + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, left = 0, data = wealth.large)
summary(wealth.large.tobit.c)


rm(thrift.large.tobit.c, wealth.large.tobit.c)