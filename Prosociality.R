# Tobit Model Extensions

### Collectivism
# Baseline A
collect.tobit <- tobit(savingrate ~ indiv_coll,left = 0, data = collectfinal)
summary(collect.tobit)

# Baseline B
collect.tobit.b <- tobit(savingrate ~ indiv_coll + age_quint + female + syear, left = 0, data = collectfinal)
summary(collect.tobit.b)

# Baseline C
collect.tobit.c <- tobit(savingrate ~ indiv_coll + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                                 + adults, left = 0, data = collectfinal)
summary(collect.tobit.c)

check.collect <- na.omit(collectfinal) %>% select(IOC) %>% distinct() 

### Belonging
# Baseline A
belong.tobit <- tobit(savingrate ~ rescaled_belong,left = 0, data = belongSVSfinal)
summary(belong.tobit)

# Baseline B
belong.tobit.b <- tobit(savingrate ~ rescaled_belong + age_quint + female + syear, left = 0, data = belongSVSfinal)
summary(belong.tobit.b)

# Baseline C
belong.tobit.c <- tobit(savingrate ~ rescaled_belong + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                         + adults, left = 0, data = belongSVSfinal)
summary(belong.tobit.c)

check.belong <- na.omit(belongSVSfinal) %>% select(IOC) %>% distinct() 


# TRUST
# Baseline A
trust.tobit <- tobit(savingrate ~ trust_prop, left = 0, data = trustfinal)
summary(trust.tobit)

# Baseline B
trust.tobit.b <- tobit(savingrate ~ trust_prop + age_quint + female + syear, left = 0, data = trustfinal)
summary(trust.tobit.b)

# Baseline C
trust.tobit.c <- tobit(savingrate ~ trust_prop + age_quint + female + syear + state + income_dec + emp_stat + mar_cat + educ_cat + kid_cat 
                        + adults, left = 0, data = trustfinal)
summary(trust.tobit.c)

check.trust <- na.omit(trustfinal) %>% select(IOC) %>% distinct() 


rm(collect.tobit, collect.tobit.b, collect.tobit.c, check.collect, belong.tobit, belong.tobit.b,
   belong.tobit.c, check.belong, trust.tobit, trust.tobit.b, trust.tobit.c, check.trust)
