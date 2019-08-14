# Preparation for model

## Relevel dummy variables
# Change levels to establish "inadequate" as the base category
finalsample2$educ_cat <- as.factor(finalsample2$educ_cat)
levels(finalsample2$educ_cat)
finalsample2$educ_cat <- relevel(finalsample2$educ_cat, ref = "inadequate")

# Change levels to establish "employed" as the base category
finalsample2$emp_stat <- as.factor(finalsample2$emp_stat)
levels(finalsample2$emp_stat)
finalsample2$emp_stat <- relevel(finalsample2$emp_stat, ref = "employed")

# Change levels to establish "single" as the base category
finalsample2$mar_cat <- as.factor(finalsample2$mar_cat)
levels(finalsample2$mar_cat)
finalsample2$mar_cat <- relevel(finalsample2$mar_cat, ref = "single")

# Change levels to establish "no kids" as the base category
finalsample2$kid_cat <- as.factor(finalsample2$kid_cat)
levels(finalsample2$kid_cat)
finalsample2$kid_cat <- relevel(finalsample2$kid_cat, ref = "no kids")



## Dummy coding for age
age_quintiles <- quantile(finalsample2$age, prob = seq(0, 1, length = 6)) # Identify five age groups
age_quintiles # Check numbers

finalsample2 <- finalsample2 %>% mutate(age_quint= ifelse(age>50, 5,
                                                        ifelse(age>41, 4,
                                                               ifelse(age>35, 3,
                                                                      ifelse(age>30, 2, 1)))))
# Change to factor
finalsample2$age_quint <- as.factor(finalsample2$age_quint)
levels(finalsample2$age_quint)

## Income deciles
inc_deciles <- quantile(finalsample2$curr_inc, prob = seq(0, 1, length = 11), type = 5) # Identify 10 income categories
inc_deciles # Check numbers

finalsample2 <- finalsample2 %>% mutate(income_dec= ifelse(curr_inc > 5009.762,10, ifelse(curr_inc > 4077.228,9, ifelse(curr_inc > 3521.317, 8, 
                                                        ifelse(curr_inc > 3072.507,7, ifelse(curr_inc > 2725.233,6, ifelse(curr_inc > 2392.498,5,
                                                              ifelse(curr_inc > 2000.000,4, ifelse(curr_inc > 1690.604,3, ifelse(curr_inc > 1280.688,2,1))))))))))
# Change to factor
finalsample2$income_dec <- as.factor(finalsample2$income_dec)
levels(finalsample2$income_dec)

# Permanent income deciles
perm_inc_deciles <- quantile(finalsample2$perm_inc, prob = seq(0, 1, length = 11), type = 5) # Identify 10 permanent income categories
perm_inc_deciles # Check numbers

finalsample2 <- finalsample2 %>% mutate(perm_income_dec= ifelse(perm_inc > 4587.1168,10, ifelse(perm_inc > 3959.1220,9, ifelse(perm_inc > 3530.8796, 8, 
                                                              ifelse(perm_inc > 3174.5213,7, ifelse(perm_inc > 2856.2856,6, ifelse(perm_inc > 2547.0310,5,
                                                                      ifelse(perm_inc > 2273.0046,4, ifelse(perm_inc > 1949.0916,3, ifelse(perm_inc > 1508.4501,2,1))))))))))
# Change to factor
finalsample2$perm_income_dec <- as.factor(finalsample2$perm_income_dec)
levels(finalsample2$perm_income_dec)


# Check number of countries
length(levels(as.factor(finalsample2$nationality)))

# Add in three-letter country codes

# Convert nationality numbers into three letter country codes

countries <- list("AUT"=10, "BLR"=132, "BEL"=117, "BIH"=120, "BUL"=29, "CRO"=119, "CZE"=31, "DEN"=13, "EST"=101, "FIN"=17, "FRA"=11, "GRE"=4, "HUN"=26,
                  "ITA"=5, "KOS"=140, "LAT"=103, "LTU"=146, "LUX"=116, "MKD"=121, "MNE"=168, "NED"=118, "NOR"=16, "POL"=22, "POR"=28, "ROU"=21, "SRB"=165,
                  "SVK"=123, "SLO"=122, "ESP"=6, "SWE"=15, "SUI"=19, "GBR"=14, "UKR"=78, "BAN"=50, "IND"=42, "INA"=25, "IRI"=24, "JOR"=90, "KAZ"=74,
                  "KOR"=23, "KGZ"=77, "LBN"=76, "PAK"=85, "PHI"=38, "RUS"=32, "SYR"=30, "TJK"=82, "TUR"=2, "VIE"=83, "ISR"=39, "PLE"=152, "TAN"=44,
                  "CHN"=68, "BOL"=27, "BRA"=61, "CAN"=55, "CHI"=20, "CRC"=92, "CUB"=59, "ECU"=96, "GUA"=157, "PAR"=124, "PER"=64, "USA"=18, "MEX"=34,
                  "COL"=48, "ALG"=79, "CPV"=36, "GHA"=49, "MAR"=67, "NAM"=105, "NGR"=54, "TOG"=144, "TUN"=52, "MOZ"=80, "RSA"=86, "YUG"=3, "BNL"=12)

IOC <- vector()
timer = 0

for(nat in finalsample2$nationality){
  timer = timer + 1
  alpha_poop <- names(which(countries == nat))
  if (length(alpha_poop) == 0) {alpha_poop = NA} 
  IOC[timer] <- alpha_poop
}

finalsample2$IOC <- IOC

rm(alpha_poop, IOC, nat, timer)


# Prepare cultural variables with finalsample2

thrift2 <- left_join(finalsample2, WVSthrift)
wealth2 <- left_join(finalsample2, SVSwealth)
indulgenceSVS2 <- left_join(finalsample2, SVSindulgence)
indulgenceHof2 <- left_join(finalsample2, Hofstedeindulgence)
longtermHof2 <- left_join(finalsample2, Hofstedelongterm)
uncavoidHof2 <- left_join(finalsample2, Hofstedeuncavoid)


# Add in values for YUG and BNL
# Append information to dataframes
thrift2 <- thrift2 %>% mutate(thrift_prop= ifelse(IOC=="YUG",33.80146,
                                                     ifelse(IOC=="BNL",30.36212, thrift_prop)))

wealth2 <- wealth2 %>% mutate(rescaled_wealth= ifelse(IOC=="YUG",46.7421,
                                                         ifelse(IOC=="BNL",25.32884, rescaled_wealth)))

indulgenceSVS2 <- indulgenceSVS2 %>% mutate(rescaled_indulg= ifelse(IOC== "YUG", 79.03457,
                                                                       ifelse(IOC=="BNL",84.00329, rescaled_indulg)))


uncavoidHof2 <- uncavoidHof2 %>% mutate(unc_avoid= ifelse(IOC=="YUG", 80,
                                                             ifelse(IOC=="BNL", 84.93607, unc_avoid)))


longtermHof2 <- longtermHof2 %>% mutate(long_term= ifelse(IOC=="YUG", 58,
                                                             ifelse(IOC=="BNL",75.20205, long_term)))


indulgenceHof2 <- indulgenceHof2 %>% mutate(indulg= ifelse(IOC=="YUG", 33,
                                                              ifelse(IOC=="BNL",56.62234, indulg)))

