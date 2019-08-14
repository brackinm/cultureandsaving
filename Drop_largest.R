# 2: drop largest country (Turkey)

# THRIFT
# Baseline C
thrift.norm.tobit.c <- tobit(savingrate ~ thrift_prop + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, left = 0, data = thrift.norm)
summary(thrift.norm.tobit.c)


### Wealth Accumulation
# Baseline C
wealth.norm.tobit.c <- tobit(savingrate ~ rescaled_wealth + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, left = 0, data = wealth.norm)
summary(wealth.norm.tobit.c)

rm(thrift.norm.tobit.c, wealth.norm.tobit.c)
