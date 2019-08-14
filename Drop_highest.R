# 4: highest (top 5%) cultural proxy

# THRIFT
# Baseline C
thrift.high.tobit.c <- tobit(savingrate ~ thrift_prop + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, left = 0, data = thrift.high)
summary(thrift.high.tobit.c)


### Wealth Accumulation
# Baseline C
wealth.high.tobit.c <- tobit(savingrate ~ rescaled_wealth + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, left = 0, data = wealth.high)
summary(wealth.high.tobit.c)

rm(thrift.high.tobit.c, wealth.high.tobit.c)
