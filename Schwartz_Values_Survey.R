# Schwartz Value Survey

### Schwartz Values Survey ###
Schwartz_1 <- fread("D:/Maria/Schwartz/f789_1.csv")
Schwartz_2 <- fread("D:/Maria/Schwartz/f789_2.csv")

Schwartz <- rbind(Schwartz_1, Schwartz_2) %>% select(id, country, y_sample, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17,
                                                          v18, v19, v20, v21d, v21p, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, 
                                                          v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55,
                                                          v56, v57)

Schwartz.Codes <- fread("D:/Maria/Schwartz/schwartz_country_codes.csv")

Schwartz1 <- left_join(Schwartz, Schwartz.Codes) 

# SCALE USE CORRECTION (MRAT)
# "Compute each individual's total score on all value items and divide by the total number of items (56 or 57). I call this the MRAT."
# "Center scores of each of the items for an individual around that individual's MRAT." 

# Add "total" column
Schwartz2 <- Schwartz1 %>% rowwise() %>% mutate(Total = sum(c(v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21d,v21p,
                                                                       v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,
                                                                       v43,v44,v45,v46,v47,v48,v49,v50,v51,v52,v53,v54,v55,v56,v57),na.rm=TRUE))
# Count responses (number of columns not=NA)
Schwartz3 <- Schwartz2 %>% mutate(Count1 = ifelse(is.na(v1), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count2 = ifelse(is.na(v2), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count3 = ifelse(is.na(v3), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count4 = ifelse(is.na(v4), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count5 = ifelse(is.na(v5), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count6 = ifelse(is.na(v6), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count7 = ifelse(is.na(v7), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count8 = ifelse(is.na(v8), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count9 = ifelse(is.na(v9), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count10 = ifelse(is.na(v10), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count11 = ifelse(is.na(v11), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count12 = ifelse(is.na(v12), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count13 = ifelse(is.na(v13), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count14 = ifelse(is.na(v14), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count15 = ifelse(is.na(v15), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count16 = ifelse(is.na(v16), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count17 = ifelse(is.na(v17), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count18 = ifelse(is.na(v18), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count19 = ifelse(is.na(v19), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count20 = ifelse(is.na(v20), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count21a = ifelse(is.na(v21d), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count21b = ifelse(is.na(v21p), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count22 = ifelse(is.na(v22), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count23 = ifelse(is.na(v23), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count24 = ifelse(is.na(v24), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count25 = ifelse(is.na(v25), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count26 = ifelse(is.na(v26), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count27 = ifelse(is.na(v27), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count28 = ifelse(is.na(v28), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count29 = ifelse(is.na(v29), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count30 = ifelse(is.na(v30), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count31 = ifelse(is.na(v31), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count32 = ifelse(is.na(v32), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count33 = ifelse(is.na(v33), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count34 = ifelse(is.na(v34), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count35 = ifelse(is.na(v35), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count36 = ifelse(is.na(v36), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count37 = ifelse(is.na(v37), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count38 = ifelse(is.na(v38), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count39 = ifelse(is.na(v39), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count40 = ifelse(is.na(v40), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count41 = ifelse(is.na(v41), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count42 = ifelse(is.na(v42), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count43 = ifelse(is.na(v43), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count44 = ifelse(is.na(v44), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count45 = ifelse(is.na(v45), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count46 = ifelse(is.na(v46), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count47 = ifelse(is.na(v47), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count48 = ifelse(is.na(v48), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count49 = ifelse(is.na(v49), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count50 = ifelse(is.na(v50), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count51 = ifelse(is.na(v51), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count52 = ifelse(is.na(v52), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count53 = ifelse(is.na(v53), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count54 = ifelse(is.na(v54), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count55 = ifelse(is.na(v55), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count56 = ifelse(is.na(v56), 0, 1)) 
Schwartz3 <- Schwartz3 %>% mutate(Count57 = ifelse(is.na(v57), 0, 1)) 

Schwartz4 <- Schwartz3 %>% rowwise() %>% mutate(Count = sum(c(Count1,Count2,Count3,Count4,Count5,Count6,Count7,Count8,Count9,Count10,Count11,
                                                                        Count12,Count13,Count14,Count15,Count16,Count17,Count18,Count19,Count20,Count21a,
                                                                        Count21b,Count22,Count23,Count24,Count25,Count26,Count27,Count28,Count29,Count30,
                                                                        Count31,Count32,Count33,Count34,Count35,Count36,Count37,Count38,Count39,Count40,
                                                                        Count41,Count42,Count43,Count44,Count45,Count46,Count47,Count48,Count49,Count50,
                                                                        Count51,Count52,Count53,Count54,Count55,Count56,Count57)))


# Divide total by responses (= MRAT)
Schwartz5 <- Schwartz4 %>% select(id, country, IOC, y_sample, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17,
                                                   v18, v19, v20, v21d, v21p, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, 
                                                   v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55,
                                                   v56, v57, Total, Count) %>% mutate(MRAT = Total/Count)

# Center scores around MRAT
Schwartzfinal <- Schwartz5 %>% select(id, country, IOC, y_sample, v7, v12, v57, Total, Count, MRAT) %>% mutate(belong=v7-MRAT) %>% mutate(wealth=v12-MRAT) %>% mutate(indulg=v57-MRAT)

# Remove unnecessary objects from workspace
rm(Schwartz, Schwartz2, Schwartz3, Schwartz4, Schwartz5)

# Now I need to take the average response for every country (across all years: 1988 - 2005). NB: did not ask about indulgence until 1994

which.countries <- Schwartzfinal %>% select(IOC) %>% distinct()

RSA <- Schwartzfinal %>% filter(IOC=="RSA")
RSA <- RSA %>% mutate(avg_wealth=mean(RSA$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(RSA$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(RSA$belong, na.rm=TRUE))
ARG <- Schwartzfinal %>% filter(IOC=="ARG")
ARG <- ARG %>% mutate(avg_wealth=mean(ARG$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(ARG$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(ARG$belong, na.rm=TRUE))
AUS <- Schwartzfinal %>% filter(IOC=="AUS")
AUS <- AUS %>% mutate(avg_wealth=mean(AUS$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(AUS$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(AUS$belong, na.rm=TRUE))
AUT <- Schwartzfinal %>% filter(IOC=="AUT")
AUT <- AUT %>% mutate(avg_wealth=mean(AUT$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(AUT$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(AUT$belong, na.rm=TRUE))
BEL <- Schwartzfinal %>% filter(IOC=="BEL")
BEL <- BEL %>% mutate(avg_wealth=mean(BEL$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(BEL$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(BEL$belong, na.rm=TRUE))
BOL <- Schwartzfinal %>% filter(IOC=="BOL")
BOL <- BOL %>% mutate(avg_wealth=mean(BOL$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(BOL$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(BOL$belong, na.rm=TRUE))
BIH <- Schwartzfinal %>% filter(IOC=="BIH")
BIH <- BIH %>% mutate(avg_wealth=mean(BIH$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(BIH$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(BIH$belong, na.rm=TRUE))
BRA <- Schwartzfinal %>% filter(IOC=="BRA")
BRA <- BRA %>% mutate(avg_wealth=mean(BRA$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(BRA$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(BRA$belong, na.rm=TRUE))
BUL <- Schwartzfinal %>% filter(IOC=="BUL")
BUL <- BUL %>% mutate(avg_wealth=mean(BUL$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(BUL$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(BUL$belong, na.rm=TRUE))
CMR <- Schwartzfinal %>% filter(IOC=="CMR")
CMR <- CMR %>% mutate(avg_wealth=mean(CMR$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(CMR$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(CMR$belong, na.rm=TRUE))
CAN <- Schwartzfinal %>% filter(IOC=="CAN")
CAN <- CAN %>% mutate(avg_wealth=mean(CAN$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(CAN$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(CAN$belong, na.rm=TRUE))
CHI <- Schwartzfinal %>% filter(IOC=="CHI")
CHI <- CHI %>% mutate(avg_wealth=mean(CHI$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(CHI$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(CHI$belong, na.rm=TRUE))
CHN <- Schwartzfinal %>% filter(IOC=="CHN")
CHN <- CHN %>% mutate(avg_wealth=mean(CHN$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(CHN$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(CHN$belong, na.rm=TRUE))
CRC <- Schwartzfinal %>% filter(IOC=="CRC")
CRC <- CRC %>% mutate(avg_wealth=mean(CRC$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(CRC$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(CRC$belong, na.rm=TRUE))
CRO <- Schwartzfinal %>% filter(IOC=="CRO")
CRO <- CRO %>% mutate(avg_wealth=mean(CRO$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(CRO$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(CRO$belong, na.rm=TRUE))
CYP <- Schwartzfinal %>% filter(IOC=="CYP")
CYP <- CYP %>% mutate(avg_wealth=mean(CYP$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(CYP$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(CYP$belong, na.rm=TRUE))
CZE <- Schwartzfinal %>% filter(IOC=="CZE")
CZE <- CZE %>% mutate(avg_wealth=mean(CZE$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(CZE$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(CZE$belong, na.rm=TRUE))
DEN <- Schwartzfinal %>% filter(IOC=="DEN")
DEN <- DEN %>% mutate(avg_wealth=mean(DEN$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(DEN$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(DEN$belong, na.rm=TRUE))
EGY <- Schwartzfinal %>% filter(IOC=="EGY")
EGY <- EGY %>% mutate(avg_wealth=mean(EGY$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(EGY$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(EGY$belong, na.rm=TRUE))
EST <- Schwartzfinal %>% filter(IOC=="EST")
EST <- EST %>% mutate(avg_wealth=mean(EST$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(EST$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(EST$belong, na.rm=TRUE))
ETH <- Schwartzfinal %>% filter(IOC=="ETH")
ETH <- ETH %>% mutate(avg_wealth=mean(ETH$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(ETH$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(ETH$belong, na.rm=TRUE))
FIJ <- Schwartzfinal %>% filter(IOC=="FIJ")
FIJ <- FIJ %>% mutate(avg_wealth=mean(FIJ$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(FIJ$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(FIJ$belong, na.rm=TRUE))
FIN <- Schwartzfinal %>% filter(IOC=="FIN")
FIN <- FIN %>% mutate(avg_wealth=mean(FIN$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(FIN$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(FIN$belong, na.rm=TRUE))
FRA <- Schwartzfinal %>% filter(IOC=="FRA")
FRA <- FRA %>% mutate(avg_wealth=mean(FRA$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(FRA$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(FRA$belong, na.rm=TRUE))
GEO <- Schwartzfinal %>% filter(IOC=="GEO")
GEO <- GEO %>% mutate(avg_wealth=mean(GEO$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(GEO$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(GEO$belong, na.rm=TRUE))
GER <- Schwartzfinal %>% filter(IOC=="GER")
GER <- GER %>% mutate(avg_wealth=mean(GER$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(GER$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(GER$belong, na.rm=TRUE))
GHA <- Schwartzfinal %>% filter(IOC=="GHA")
GHA <- GHA %>% mutate(avg_wealth=mean(GHA$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(GHA$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(GHA$belong, na.rm=TRUE))
GRE <- Schwartzfinal %>% filter(IOC=="GRE")
GRE <- GRE %>% mutate(avg_wealth=mean(GRE$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(GRE$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(GRE$belong, na.rm=TRUE))
HKG <- Schwartzfinal %>% filter(IOC=="HKG")
HKG <- HKG %>% mutate(avg_wealth=mean(HKG$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(HKG$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(HKG$belong, na.rm=TRUE))
HUN <- Schwartzfinal %>% filter(IOC=="HUN")
HUN <- HUN %>% mutate(avg_wealth=mean(HUN$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(HUN$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(HUN$belong, na.rm=TRUE))
IND <- Schwartzfinal %>% filter(IOC=="IND")
IND <- IND %>% mutate(avg_wealth=mean(IND$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(IND$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(IND$belong, na.rm=TRUE))
INA <- Schwartzfinal %>% filter(IOC=="INA")
INA <- INA %>% mutate(avg_wealth=mean(INA$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(INA$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(INA$belong, na.rm=TRUE))
IRI <- Schwartzfinal %>% filter(IOC=="IRI")
IRI <- IRI %>% mutate(avg_wealth=mean(IRI$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(IRI$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(IRI$belong, na.rm=TRUE))
IRL <- Schwartzfinal %>% filter(IOC=="IRL") 
IRL <- IRL %>% mutate(avg_wealth=mean(IRL$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(IRL$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(IRL$belong, na.rm=TRUE))
ISR <- Schwartzfinal %>% filter(IOC=="ISR")
ISR <- ISR %>% mutate(avg_wealth=mean(ISR$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(ISR$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(ISR$belong, na.rm=TRUE))
ITA <- Schwartzfinal %>% filter(IOC=="ITA")
ITA <- ITA %>% mutate(avg_wealth=mean(ITA$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(ITA$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(ITA$belong, na.rm=TRUE))
JPN <- Schwartzfinal %>% filter(IOC=="JPN")
JPN <- JPN %>% mutate(avg_wealth=mean(JPN$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(JPN$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(JPN$belong, na.rm=TRUE))
JOR <- Schwartzfinal %>% filter(IOC=="JOR")
JOR <- JOR %>% mutate(avg_wealth=mean(JOR$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(JOR$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(JOR$belong, na.rm=TRUE))
KOR <- Schwartzfinal %>% filter(IOC=="KOR")
KOR <- KOR %>% mutate(avg_wealth=mean(KOR$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(KOR$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(KOR$belong, na.rm=TRUE))
LAT <- Schwartzfinal %>% filter(IOC=="LAT")
LAT <- LAT %>% mutate(avg_wealth=mean(LAT$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(LAT$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(LAT$belong, na.rm=TRUE))
MKD <- Schwartzfinal %>% filter(IOC=="MKD")
MKD <- MKD %>% mutate(avg_wealth=mean(MKD$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(MKD$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(MKD$belong, na.rm=TRUE))
MAS <- Schwartzfinal %>% filter(IOC=="MAS")
MAS <- MAS %>% mutate(avg_wealth=mean(MAS$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(MAS$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(MAS$belong, na.rm=TRUE))
MEX <- Schwartzfinal %>% filter(IOC=="MEX")
MEX <- MEX %>% mutate(avg_wealth=mean(MEX$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(MEX$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(MEX$belong, na.rm=TRUE))
NAM <- Schwartzfinal %>% filter(IOC=="NAM")
NAM <- NAM %>% mutate(avg_wealth=mean(NAM$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(NAM$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(NAM$belong, na.rm=TRUE))
NEP <- Schwartzfinal %>% filter(IOC=="NEP")
NEP <- NEP %>% mutate(avg_wealth=mean(NEP$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(NEP$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(NEP$belong, na.rm=TRUE))
NED <- Schwartzfinal %>% filter(IOC=="NED")
NED <- NED %>% mutate(avg_wealth=mean(NED$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(NED$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(NED$belong, na.rm=TRUE))
NZL <- Schwartzfinal %>% filter(IOC=="NZL")
NZL <- NZL %>% mutate(avg_wealth=mean(NZL$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(NZL$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(NZL$belong, na.rm=TRUE))
NGR <- Schwartzfinal %>% filter(IOC=="NGR")
NGR <- NGR %>% mutate(avg_wealth=mean(NGR$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(NGR$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(NGR$belong, na.rm=TRUE))
NOR <- Schwartzfinal %>% filter(IOC=="NOR")
NOR <- NOR %>% mutate(avg_wealth=mean(NOR$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(NOR$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(NOR$belong, na.rm=TRUE))
PER <- Schwartzfinal %>% filter(IOC=="PER")
PER <- PER %>% mutate(avg_wealth=mean(PER$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(PER$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(PER$belong, na.rm=TRUE))
PHI <- Schwartzfinal %>% filter(IOC=="PHI")
PHI <- PHI %>% mutate(avg_wealth=mean(PHI$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(PHI$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(PHI$belong, na.rm=TRUE))
POL <- Schwartzfinal %>% filter(IOC=="POL")
POL <- POL %>% mutate(avg_wealth=mean(POL$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(POL$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(POL$belong, na.rm=TRUE))
POR <- Schwartzfinal %>% filter(IOC=="POR")
POR <- POR %>% mutate(avg_wealth=mean(POR$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(POR$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(POR$belong, na.rm=TRUE))
ROU <- Schwartzfinal %>% filter(IOC=="ROU")
ROU <- ROU %>% mutate(avg_wealth=mean(ROU$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(ROU$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(ROU$belong, na.rm=TRUE))
RUS <- Schwartzfinal %>% filter(IOC=="RUS")
RUS <- RUS %>% mutate(avg_wealth=mean(RUS$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(RUS$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(RUS$belong, na.rm=TRUE))
SEN <- Schwartzfinal %>% filter(IOC=="SEN")
SEN <- SEN %>% mutate(avg_wealth=mean(SEN$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(SEN$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(SEN$belong, na.rm=TRUE))
SGP <- Schwartzfinal %>% filter(IOC=="SGP")
SGP <- SGP %>% mutate(avg_wealth=mean(SGP$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(SGP$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(SGP$belong, na.rm=TRUE))
SVK <- Schwartzfinal %>% filter(IOC=="SVK")
SVK <- SVK %>% mutate(avg_wealth=mean(SVK$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(SVK$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(SVK$belong, na.rm=TRUE))
SLO <- Schwartzfinal %>% filter(IOC=="SLO")
SLO <- SLO %>% mutate(avg_wealth=mean(SLO$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(SLO$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(SLO$belong, na.rm=TRUE))
ESP <- Schwartzfinal %>% filter(IOC=="ESP")
ESP <- ESP %>% mutate(avg_wealth=mean(ESP$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(ESP$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(ESP$belong, na.rm=TRUE))
SWE <- Schwartzfinal %>% filter(IOC=="SWE")
SWE <- SWE %>% mutate(avg_wealth=mean(SWE$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(SWE$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(SWE$belong, na.rm=TRUE))
SUI <- Schwartzfinal %>% filter(IOC=="SUI")
SUI <- SUI %>% mutate(avg_wealth=mean(SUI$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(SUI$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(SUI$belong, na.rm=TRUE))
TPE <- Schwartzfinal %>% filter(IOC=="TPE")
TPE <- TPE %>% mutate(avg_wealth=mean(TPE$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(TPE$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(TPE$belong, na.rm=TRUE))
THA <- Schwartzfinal %>% filter(IOC=="THA")
THA <- THA %>% mutate(avg_wealth=mean(THA$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(THA$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(THA$belong, na.rm=TRUE))
TUR <- Schwartzfinal %>% filter(IOC=="TUR")
TUR <- TUR %>% mutate(avg_wealth=mean(TUR$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(TUR$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(TUR$belong, na.rm=TRUE))
UGA <- Schwartzfinal %>% filter(IOC=="UGA")
UGA <- UGA %>% mutate(avg_wealth=mean(UGA$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(UGA$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(UGA$belong, na.rm=TRUE))
UKR <- Schwartzfinal %>% filter(IOC=="UKR")
UKR <- UKR %>% mutate(avg_wealth=mean(UKR$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(UKR$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(UKR$belong, na.rm=TRUE))
GBR <- Schwartzfinal %>% filter(IOC=="GBR")
GBR <- GBR %>% mutate(avg_wealth=mean(GBR$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(GBR$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(GBR$belong, na.rm=TRUE))
USA <- Schwartzfinal %>% filter(IOC=="USA")
USA <- USA %>% mutate(avg_wealth=mean(USA$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(USA$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(USA$belong, na.rm=TRUE))
VEN <- Schwartzfinal %>% filter(IOC=="VEN")
VEN <- VEN %>% mutate(avg_wealth=mean(VEN$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(VEN$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(VEN$belong, na.rm=TRUE))
YEM <- Schwartzfinal %>% filter(IOC=="YEM")
YEM <- YEM %>% mutate(avg_wealth=mean(YEM$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(YEM$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(YEM$belong, na.rm=TRUE))
SRB <- Schwartzfinal %>% filter(IOC=="SRB")
SRB <- SRB %>% mutate(avg_wealth=mean(SRB$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(SRB$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(SRB$belong, na.rm=TRUE))
ZIM <- Schwartzfinal %>% filter(IOC=="ZIM")
ZIM <- ZIM %>% mutate(avg_wealth=mean(ZIM$wealth, na.rm=TRUE)) %>% mutate(avg_indulg=mean(ZIM$indulg, na.rm=TRUE)) %>% mutate(avg_belong=mean(ZIM$belong, na.rm=TRUE))

Schwartzcalculated <- rbind(RSA,ARG,AUS,AUT,BEL,BOL,BIH,BRA,BUL,CMR,CAN,CHI,CHN,CRC,CRO,CYP,CZE,DEN,EGY,EST,ETH,FIJ,FIN,FRA,GEO,GER,GHA,GRE,HKG,HUN,IND,INA,
                            IRI,IRL,ISR,ITA,JPN,JOR,KOR,LAT,MKD,MAS,MEX,NAM,NEP,NED,NZL,NGR,NOR,PER,PHI,POL,POR,ROU,RUS,SEN,SGP,SVK,SLO,ESP,SWE,SUI,TPE,THA,
                            TUR,UGA,UKR,GBR,USA,VEN,YEM,SRB,ZIM)

# Remove invalid responses
Schwartzcalculated <- Schwartzcalculated %>% filter(MRAT > 0)

# Rescale values from 0 to 100
Schwartzcalculated$rescaled_wealth <- rescale(Schwartzcalculated$avg_wealth,to=c(0,100))
Schwartzcalculated$rescaled_indulg <- rescale(Schwartzcalculated$avg_indulg,to=c(0,100))
Schwartzcalculated$rescaled_belong <- rescale(Schwartzcalculated$avg_belong,to=c(0,100))

rm(RSA,ARG,AUS,AUT,BEL,BOL,BIH,BRA,BUL,CMR,CAN,CHI,CHN,CRC,CRO,CYP,CZE,DEN,EGY,EST,ETH,FIJ,FIN,FRA,GEO,GER,GHA,GRE,HKG,HUN,IND,INA,
   IRI,IRL,ISR,ITA,JPN,JOR,KOR,LAT,MKD,MAS,MEX,NAM,NEP,NED,NZL,NGR,NOR,PER,PHI,POL,POR,ROU,RUS,SEN,SGP,SVK,SLO,ESP,SWE,SUI,TPE,THA,
   TUR,UGA,UKR,GBR,USA,VEN,YEM,SRB,ZIM)

rm(Schwartz_1, Schwartz_2, Schwartz.Codes, Schwartzfinal)


### Data Frame: Wealth Accumulation (SVS) ###
SVSwealth <- Schwartzcalculated %>% select(IOC, rescaled_wealth) %>% distinct()

wealth <- left_join(finalsample, SVSwealth)

### Data Frame: Indulgence (SVS) ###
SVSindulgence <- Schwartzcalculated %>% select(IOC, rescaled_indulg) %>% distinct()

indulgenceSVS <- left_join(finalsample, SVSindulgence)

### Data Frame: Belonging (SVS) ###
SVSbelong <- Schwartzcalculated %>% select(IOC, rescaled_belong) %>% distinct()

belongSVS <- left_join(finalsample, SVSbelong)

