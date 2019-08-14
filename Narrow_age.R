# 6: 30-60 years age range

# THRIFT
# Baseline C
thrift.age.tobit.c <- tobit(savingrate ~ thrift_prop + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, left = 0, data = thrift.age)
summary(thrift.age.tobit.c)


### Wealth Accumulation
# Baseline C
wealth.age.tobit.c <- tobit(savingrate ~ rescaled_wealth + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, left = 0, data = wealth.age)
summary(wealth.age.tobit.c)


rm(thrift.age.tobit.c, wealth.age.tobit.c)