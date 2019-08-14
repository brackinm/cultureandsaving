# 5: lowest (bottom 5%) cultural proxy

# THRIFT
# Baseline C
thrift.low.tobit.c <- tobit(savingrate ~ thrift_prop + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, left = 0, data = thrift.low)
summary(thrift.low.tobit.c)


### Wealth Accumulation
# Baseline C
wealth.low.tobit.c <- tobit(savingrate ~ rescaled_wealth + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, left = 0, data = wealth.low)
summary(wealth.low.tobit.c)

rm(thrift.low.tobit.c, wealth.low.tobit.c)
