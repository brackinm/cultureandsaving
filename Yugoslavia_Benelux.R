# Calculate the population-weighted averages for Yugoslavia (current-day Bosnia and Herzegovina, Croatia, Montenegro, North Macedonia, Serbia, Slovenia)
# Using immigration figues to Germany from 2014

# Bosnia and Herzegovina (BIH) (163,519  people)
Bosnia.Herzegovina <- WVSEVSthrifttrust %>% filter(IOC=="BIH") # thrift_prop = 39.125, trust_prop = 24.75
Bosnia.Herzegovina.2 <- Schwartzcalculated %>% filter(IOC=="BIH") # Rescaled wealth = 33.74603, Rescaled indulgence = 82.10177, Rescaled belonging = 65.26123
Bosnia.Herzegovina.3 <- Hofstede %>% filter(IOC=="BIH") # Not in Hofstede

# Croatia (CRO) (263,347 people)
Croatia <- WVSEVSthrifttrust %>% filter(IOC=="CRO") # thrift_prop = 28.54641, trust_prop = 23.90543
Croatia.2 <- Schwartzcalculated %>% filter(IOC=="CRO") # Rescaled wealth = 45.80688, Rescaled indulgence = 86.29784, Rescaled belonging = 60.74547
Croatia.3 <- Hofstede %>% filter(IOC=="CRO") # unc_avoid = 80, long_term = 58, indulg = 33, indiv_coll = 33

# Macedonia (MKD) (83,854 people)
Macedonia <- WVSEVSthrifttrust %>% filter(IOC=="MKD") # thrift_prop = 42.133, trust_prop = 10.79046
Macedonia.2 <- Schwartzcalculated %>% filter(IOC=="MKD") # Rescaled wealth = 63.51447, Rescaled indulgence = 64.47684, Rescaled belonging = 23.65192
Macedonia.3 <- Hofstede %>% filter(IOC=="MKD") # Not in Hofstede

# Montenegro (MNE) (18,977 people)
Montenegro <- WVSEVSthrifttrust %>% filter(IOC=="MNE") # Not in WVS
Montenegro.2 <- Schwartzcalculated %>% filter(IOC=="MNE") # Not in Schwartz
Montenegro.3 <- Hofstede %>% filter(IOC=="MNE") # Not in Hofstede

# Serbia (SRB) (220,908 people)
Serbia <- WVSEVSthrifttrust %>% filter(IOC=="SRB") # thrift_prop = 31.96385, trust_prop = 27.55409
Serbia.2 <- Schwartzcalculated %>% filter(IOC=="SRB") # Rescaled wealth = 51.24564, Rescaled indulgence = 73.63149, Rescaled belonging = 43.18041
Serbia.3 <- Hofstede %>% filter(IOC=="SRB") # Not in Hofstede

# Slovenia (SLO) (25,613 people)
Slovenia <- WVSEVSthrifttrust %>% filter(IOC=="SLO") # thrift_prop = 42.41877, trust_prop = 17.46891
Slovenia.2 <- Schwartzcalculated %>% filter(IOC=="SLO") # Rescaled wealth = 45.57446, Rescaled indulgence = NA, Rescaled belonging = 62.43152
Slovenia.3 <- Hofstede %>% filter(IOC=="SLO") # Not in Hofstede

# Weightings
# WVS thrift (TOTAL = 757,241)
# Bosnia and Herzegovina + Croatia + Macedonia + Serbia + Slovenia
(((163519/757241)*39.125)+((263347/757241)*28.54641)+((83854/757241)*42.133)+((220908/757241)*31.96385)+((25613/757241)*42.41877)) # = 33.80146

# WVS trust (TOTAL = 372,814)
# Bosnia and Herzegovina + Croatia + Macedonia + Serbia + Slovenia
(((163519/757241)*24.75)+((263347/757241)*23.90543)+((83854/757241)*10.79046)+((220908/757241)*27.55409)+((25613/757241)*17.46891)) # = 23.48221

# Schwartz wealth (TOTAL = 757,241)
# Bosnia and Herzegovina + Croatia + Macedonia + Serbia + Slovenia
(((163519/757241)*33.74603)+((263347/757241)*45.80688)+((83854/757241)*63.51447)+((220908/757241)*51.24564)+((25613/757241)*45.57446)) # = 46.7421

# Schwartz indulgence (TOTAL = 731,628)
# Bosnia and Herzegovina + Croatia + Macedonia + Serbia 
(((163519/731628)*82.10177)+((263347/731628)*86.29784)+((83854/731628)*64.47684)+((220908/731628)*73.63149)) # = 79.03457

# Schwartz belonging (TOTAL = 757,241)
# Bosnia and Herzegovina + Croatia + Macedonia + Serbia + Slovenia
(((163519/757241)*65.26123)+((263347/757241)*60.74547)+((83854/757241)*23.65192)+((220908/757241)*43.18041)+((25613/757241)*62.43152)) # = 52.54582

# Hofstede (TOTAL = 263,347)
# only Croatia
# unc_avoid = 80, long_term = 58, indulg = 33, indiv_coll = 33

rm(Bosnia.Herzegovina, Bosnia.Herzegovina.2, Bosnia.Herzegovina.3, Croatia, croatia.2, Croatia.3, Macedonia, Macedonia.2, Macedonia.3, Montenegro, 
   Montenegro.2, Montenegro.3, Serbia, Serbia.2, Serbia.3, Slovenia, Slovenia.2, Slovenia.3)

## REPEAT PROCEDURE FOR BENELUX (Belgium, Netherlands, and Luxembourg)
# Belgium (BEL) (25,700  people)
Belgium <- WVSEVSthrifttrust %>% filter(IOC=="BEL") # thrift_prop = 38.92293, trust_prop = 31.34633
Belgium.2 <- Schwartzcalculated %>% filter(IOC=="BEL") # Rescaled wealth = 21.94707, Rescaled indulgence = 88.27284, Rescaled belonging = 77.51248
Belgium.3 <- Hofstede %>% filter(IOC=="BEL") # unc_avoid = 94, long_term = 82, indulg = 57, indiv_coll = 75

# Netherlands (NED) (144,741 people)
Netherlands <- WVSEVSthrifttrust %>% filter(IOC=="NED") # thrift_prop = 26.99779, trust_prop = 49.96312
Netherlands.2 <- Schwartzcalculated %>% filter(IOC=="NED") # Rescaled wealth = 25.9293, Rescaled indulgence = 83.24519, Rescaled belonging = 59.11174
Netherlands.3 <- Hofstede %>% filter(IOC=="NED") # Not in Hofstede

# Luxembourg (LUX) (15,596 people)
Luxembourg <- WVSEVSthrifttrust %>% filter(IOC=="LUX") # thrift_prop = 47.47826, trust_prop = 24.78261
Luxembourg.2 <- Schwartzcalculated %>% filter(IOC=="LUX") # Not in Schwartz
Luxembourg.3 <- Hofstede %>% filter(IOC=="LUX") # unc_avoid = 70, long_term = 64, indulg = 56, indiv_coll = 60

# Weightings
# WVS thrift (TOTAL = 186,037)
# Belgium + Netherlands + Luxembourg
(((25700/186037)*38.92293)+((144741/186037)*26.99779)+((15596/186037)*47.47826)) # = 30.36212

# WVS trust (TOTAL = 186,037)
# Belgium + Netherlands + Luxembourg
(((25700/186037)*31.34633)+((144741/186037)*49.96312)+((15596/186037)*24.78261)) # = 45.28036

# Schwartz wealth (TOTAL = 170,441)
# Belgium + Netherlands
(((25700/170441)*21.94707)+((144741/170441)*25.9293)) # = 25.32884

# Schwartz indulgence (TOTAL = 170,441)
# Belgium + Netherlands 
(((25700/170441)*88.27284)+((144741/170441)*83.24519)) # = 84.00329

# Schwartz belonging (TOTAL = 170,441)
# Belgium + Netherlands
(((25700/170441)*77.51248)+((144741/170441)*59.11174)) # = 61.8863

# Hofstede uncertainty avoidance (TOTAL = 41,296)
# Belgium + Luxembourg
(((25700/41296)*94)+((15596/41296)*70)) # = 84.93607

# Hofstede long-term orientation (TOTAL = 41,296)
# Belgium + Luxembourg
(((25700/41296)*82)+((15596/41296)*64)) # = 75.20205

# Hofstede indulgence (TOTAL = 41,296)
# Belgium + Luxembourg
(((25700/41296)*57)+((15596/41296)*56)) # = 56.62234

# Hofstede individualism collectivism (TOTAL = 41,296)
# Belgium + Luxembourg
(((25700/41296)*75)+((15596/41296)*60)) # = 69.33504


rm(Belgium, Belgium.2, Belgium.3, Netherlands, Netherlands.2, Netherlands.3, Luxembourg, Luxembourg.2, Luxembourg.3)


# Append information to dataframes
thriftfinal <- thrift %>% mutate(thrift_prop= ifelse(IOC=="YUG",33.80146,
                                                    ifelse(IOC=="BNL",30.36212, thrift_prop)))

wealthfinal <- wealth %>% mutate(rescaled_wealth= ifelse(IOC=="YUG",46.7421,
                                                         ifelse(IOC=="BNL",25.32884, rescaled_wealth)))

indulgenceSVSfinal <- indulgenceSVS %>% mutate(rescaled_indulg= ifelse(IOC== "YUG", 79.03457,
                                                                       ifelse(IOC=="BNL",84.00329, rescaled_indulg)))

belongSVSfinal <- belongSVS %>% mutate(rescaled_belong= ifelse(IOC=="YUG", 52.54582,
                                                               ifelse(IOC=="BNL",61.8863, rescaled_belong)))


uncavoidHoffinal <- uncavoidHof %>% mutate(unc_avoid= ifelse(IOC=="YUG", 80,
                                                             ifelse(IOC=="BNL", 84.93607, unc_avoid)))


longtermHoffinal <- longtermHof %>% mutate(long_term= ifelse(IOC=="YUG", 58,
                                                             ifelse(IOC=="BNL",75.20205, long_term)))


indulgenceHoffinal <- indulgenceHof %>% mutate(indulg= ifelse(IOC=="YUG", 33,
                                                              ifelse(IOC=="BNL",56.62234, indulg)))


collectfinal <- collect %>% mutate(indiv_coll= ifelse(IOC=="YUG",33,
                                                      ifelse(IOC=="BNL",69.33504, indiv_coll)))


trustfinal <- trust %>% mutate(trust_prop= ifelse(IOC=="YUG", 23.48221,
                                                  ifelse(IOC=="BNL", 45.28036, trust_prop)))

rm(thrift, wealth, indulgenceSVS, belongSVS, uncavoidHof, longtermHof, indulgenceHof, collect)

