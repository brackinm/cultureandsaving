### European Values Survey ###

path <- file.path("D:/Maria/EVS/XWVSEVS_1981_2000_v20060423.sav")
EuropeanValuesSurvey <- read_sav(path)

EVS <- EuropeanValuesSurvey %>% select(S003, S006, S020, A038, A165) 
names(EVS) <- c("Code", "respondent", "syear", "thrift", "trust")
EVS <- remove_all_labels(EVS)
EVS$Code <- as.numeric(EVS$Code)

EVScountries <- fread("D:/Maria/WVS/WVS_Countries.csv")

EVSfinal <- left_join(EVS, EVScountries)

country.codes <- fread("D:/Maria/R/countrycodes.csv") # Country codes
names(country.codes) <- c("country", "IOC", "FIFA", "ISO")

EVSfinal <- left_join(EVSfinal, country.codes)

rm(EuropeanValuesSurvey, EVS, EVScountries)

### World Values Survey ###

WorldValuesSurvey <- readRDS("D:/Maria/WVS/F00008390-WVS_Longitudinal_1981_2016_r_v20180912.rds")

WVS <- WorldValuesSurvey %>% select(S003, S006, S020, A038, A165) 
names(WVS) <- c("Code", "respondent", "syear", "thrift", "trust")

WVS <- remove_all_labels(WVS)
WVS$Code <- as.numeric(WVS$Code)

WVScountries <- fread("D:/Maria/WVS/WVS_Countries.csv")

WVSfinal <- left_join(WVS, WVScountries)
WVSfinal <- left_join(WVSfinal, country.codes)

rm(WorldValuesSurvey, WVS, WVScountries)

# Add missing countries with slight differences in name formatting (GBR, SRB, CZE, BIH)
EVSfinal <- EVSfinal %>% mutate(IOC= ifelse(country=="Great Britain", "GBR", IOC))
EVSfinal <- EVSfinal %>% mutate(IOC= ifelse(country=="Serbia and Montenegro", "SRB", IOC))
EVSfinal <- EVSfinal %>% mutate(IOC= ifelse(country=="Czech Rep.", "CZE", IOC))
EVSfinal <- EVSfinal %>% mutate(IOC= ifelse(country=="Bosnian Federation", "BIH", IOC))

WVSfinal <- WVSfinal %>% mutate(IOC= ifelse(country=="Great Britain", "GBR", IOC))
WVSfinal <- WVSfinal %>% mutate(IOC= ifelse(country=="Serbia and Montenegro", "SRB", IOC))
WVSfinal <- WVSfinal %>% mutate(IOC= ifelse(country=="Czech Rep.", "CZE", IOC))
WVSfinal <- WVSfinal %>% mutate(IOC= ifelse(country=="Bosnian Federation", "BIH", IOC))


## Select variables of interest
EVSfinal <- EVSfinal %>% select(Code, respondent, syear, thrift, trust, IOC)
WVSfinal <- WVSfinal %>% select(Code, respondent, syear, thrift, trust, IOC)









