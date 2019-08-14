# SOEP editing
# The purpose of this code is to add in necessary information for the model and to restrict by sample criteria.

# Use previous order to join data frames together
step1 <- left_join(personaldf, financialdf) # hid, syear
step2 <- left_join(step1, statedf) # hid, pid, syear
step3 <- left_join(step2, headdf) # hid, pid, syear
step4 <- left_join(step3, childdf) # hid, syear
step5 <- left_join(step4, sizedf) # hid, syear
step6 <- left_join(step5, migrationdf) # hid, pid, syear

masterdf <- step6 %>% distinct()

rm(step1, step2, step3, step4, step5, step6)

## Add in CPI information
CPI <- fread("D:/Maria/oecd_cpi.csv") 

germany_cpi <- CPI %>% filter(LOCATION == "DEU") 

germany_cpi <- germany_cpi %>% filter(TIME>1991 & TIME<2018)
germany_cpi <- germany_cpi %>% select(TIME, Value)
names(germany_cpi) <- c("syear", "CPI")

workingdf1 <- left_join(masterdf, germany_cpi) # Add CPI information to data frame
workingdf1 <- workingdf1 %>% mutate(CPI = CPI+100) # CPI 
workingdf1 <- workingdf1 %>% mutate(CPI2010 = 101.1038) # Establish 2010 as the base year 


## Only keep HH-heads
workingdf2 <- workingdf1 %>% filter(hh_head==0) 


## Calculate age and apply restrictions
workingdf3 <- workingdf2 %>% mutate(age=syear-birth_yr) %>% filter(birth_yr > 0) %>% filter(age>=25 & age<=65)

## Dummy coding for sex
workingdf4 <- workingdf3 %>% mutate(female=ifelse(sex==1,0,1))


## Drop individuals still in school
workingdf5 <- workingdf4 %>% filter(pgisced97>0) 

## Dummy coding for educational status (six educational variables)
workingdf6 <- workingdf5 %>% mutate(educ_cat = ifelse(pgisced97==1, "inadequate", # Inadequate
                                                      ifelse(pgisced97==2, "general elem", # General elementary
                                                             ifelse(pgisced97==3, "middle voc", # Middle vocational
                                                                    ifelse(pgisced97==4, "voc plus arbit", # Vocational plus arbitur
                                                                           ifelse(pgisced97==5, "higher voc", # Higher vocational
                                                                                  ifelse(pgisced97==6, "higher educ", NA))))))) # Higher education

# Change levels to establish "inadequate" as the base category
workingdf6$educ_cat <- as.factor(workingdf6$educ_cat)
levels(workingdf6$educ_cat)
workingdf6$educ_cat <- relevel(workingdf6$educ_cat, ref = "inadequate")


## Identify employment status plus dummy coding
workingdf7 <- workingdf6 %>% mutate(unemployed = ifelse( pgemplst==5 & pgstib==12, 1, 0)) # unemployed
workingdf7 <- workingdf7 %>% mutate(notlaborforce = ifelse( pgemplst==4 | pgemplst==6 | pgemplst==3 | (pgemplst==5 & pgstib!=12 & pgstib!=13), 1,0)) # not in labor force
workingdf7 <- workingdf7 %>% mutate(retired = ifelse(pgemplst==5 & pgstib==13, 1,0)) # retired
workingdf7 <- workingdf7 %>% mutate(civilserv = ifelse((pgstib==610 | pgstib==620 | pgstib==630 | pgstib==640) & (pgemplst==1 | pgemplst==2), 1,0)) # civil service
workingdf7 <- workingdf7 %>% mutate(selfemp = ifelse( (pgemplst==1 | pgemplst==2) & (pgstib==410 | pgstib==411 | pgstib==412 | pgstib==413 | pgstib==420 |pgstib==421 | pgstib==422 | pgstib==423 |pgstib==430 | pgstib==431 | pgstib==432 |pgstib==433), 1,0) )
workingdf7 <- workingdf7 %>% mutate(employed = ifelse( (pgemplst==1 | pgemplst==2) & (pgstib!=610 | pgstib!=620 | pgstib!=630 | pgstib!=640 | pgstib!=410 | pgstib!=411 | pgstib!=412 | pgstib!=413 | pgstib!=420 | pgstib!=421 | pgstib!=422 | pgstib!=423 | pgstib!=430 | pgstib!=431 | pgstib!=432 | pgstib!=433), 1,0 ) )

workingdf7 <- workingdf7 %>% mutate(emp_stat = ifelse(unemployed==1, "unemployed",
                                                      ifelse(notlaborforce==1, "not in labor force",
                                                             ifelse(retired==1, "retired", 
                                                                    ifelse(civilserv==1, "civil service", 
                                                                           ifelse(selfemp==1, "self employed", 
                                                                                  ifelse(employed==1, "employed", NA)))))))
# Change levels to establish "employed" as the base category
workingdf7$emp_stat <- as.factor(workingdf7$emp_stat)
levels(workingdf7$emp_stat)
workingdf7$emp_stat <- relevel(workingdf7$emp_stat, ref = "employed")

# Remove unnecessary columns
workingdf7$unemployed <- NULL
workingdf7$notlaborforce <- NULL
workingdf7$retired <- NULL
workingdf7$civilserv <- NULL
workingdf7$selfemp <- NULL
workingdf7$employed <- NULL

## Calculate current income 
workingdf8 <- workingdf7 %>% mutate(net_income=ifelse(net_income<0,NA,net_income)) %>% mutate(curr_inc = (net_income*CPI2010)/CPI)

## Calculate permanent income 
perm_inc <- workingdf8 %>% select(hid,syear,curr_inc) %>% group_by(hid) %>% summarise(perm_inc = mean(curr_inc))
workingdf9 <- left_join(workingdf8, perm_inc)

## Check saving status and calculate saving rate
workingdf10 <- workingdf9 %>% mutate(amt_saving = ifelse(saving==2,0,amt_saving)) %>% mutate(amt_saving = ifelse(amt_saving<0,NA,amt_saving)) 
workingdf10 <- workingdf10 %>% mutate(real_saving = ((amt_saving/CPI2010)*100)) %>% mutate(savingrate = (real_saving/curr_inc)*100)


## Filter by saving criteria
workingdf11 <- workingdf10 %>% filter(savingrate>-1) 
workingdf11 <- workingdf11 %>% filter(savingrate<100)


## Dummy coding for marital status
workingdf12 <- workingdf11 %>% filter(pgfamstd>0) 

workingdf12 <- workingdf12 %>% mutate(married = ifelse(pgfamstd==1 | pgfamstd==2 | pgfamstd==7 | pgfamstd==8 | pgfamstd==6, 1, 0))
workingdf12 <- workingdf12 %>% mutate(divorced = ifelse(pgfamstd==4, 1, 0))
workingdf12 <- workingdf12 %>% mutate(widowed = ifelse(pgfamstd==5, 1, 0))
workingdf12 <- workingdf12 %>% mutate(single = ifelse(pgfamstd==3, 1, 0))

workingdf12 <- workingdf12 %>% mutate(mar_cat = ifelse(married==1, "married",
                                                      ifelse(divorced==1, "divorced",
                                                             ifelse(widowed==1, "widowed", 
                                                                    ifelse(single==1, "single", NA)))))

# Change levels to establish "single" as the base category
workingdf12$mar_cat <- as.factor(workingdf12$mar_cat)
levels(workingdf12$mar_cat)
workingdf12$mar_cat <- relevel(workingdf12$mar_cat, ref = "single")

# Remove unnecessary columns
workingdf12$married <- NULL
workingdf12$divorced <- NULL
workingdf12$widowed <- NULL
workingdf12$single <- NULL

## Calculate number of kids and adults
workingdf13 <- workingdf12 %>% mutate(drop = ifelse(kids_16==1 & no_kids<0, 1, 0))
workingdf13 <- workingdf13 %>% filter(drop == 0)

workingdf13 <- workingdf13 %>% mutate(no_kids = ifelse(kids_16==2, 0, no_kids)) # no children in household
workingdf13 <- workingdf13 %>% mutate(adults = hhgr-no_kids)


## Dummy coding for number of kids
workingdf13 <- workingdf13 %>% mutate(kid_cat = ifelse(no_kids==0, "no kids", # No children
                                                     ifelse(no_kids==1, "1 kid", # One child
                                                            ifelse(no_kids==2, "2 kids", # Two children
                                                                   ifelse(no_kids>=3, "3+ kids", NA))))) # Three or more children

# Change levels to establish "no kids" as the base category
workingdf13$kid_cat <- as.factor(workingdf13$kid_cat)
levels(workingdf13$kid_cat)
workingdf13$kid_cat <- relevel(workingdf13$kid_cat, ref = "no kids")

## Calculate permanent income again??? (WHY DOES THIS HAPPEN)
perm_inc <- workingdf13 %>% select(hid,syear,curr_inc) %>% group_by(hid) %>% summarise(perm_inc = mean(curr_inc))
workingdf14 <- left_join(workingdf13, perm_inc, by = "hid")

workingdf14$perm_inc.x <- NULL
colnames(workingdf14)[36] <- "perm_inc"

## Save as final working data frame
finalworkingdf <- workingdf14 %>% distinct()

# remove unnecessary objects from workspace 
rm(workingdf1, workingdf2, workingdf3, workingdf4, workingdf5, workingdf6, workingdf7, workingdf8, workingdf9, workingdf10, workingdf11, workingdf12, 
   workingdf13, CPI, germany_cpi, perm_inc, masterdf)


