# 7: no "composite" countries (YUG, BNL)

# THRIFT
# Baseline C
thrift.single.tobit.c <- tobit(savingrate ~ thrift_prop + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, left = 0, data = thrift.single)
summary(thrift.single.tobit.c)


### Wealth Accumulation
# Baseline C
wealth.single.tobit.c <- tobit(savingrate ~ rescaled_wealth + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, left = 0, data = wealth.single)
summary(wealth.single.tobit.c)

rm(thrift.single.tobit.c, wealth.single.tobit.c)