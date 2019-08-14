### Trust ### 
# World Values Survey (WVS) and European Values Survey (EVS)
# Compute the fraction of participants in each country that considers trust to be important and average this value over all existing waves

WVSEVStrust <- WVSEVSthrifttrust %>% select(Code, respondent, syear, trust, IOC, prop2, trust_prop) 

### Data Frame: trust (WVS) ###
WVStrust <- WVSEVStrust %>% select(IOC, prop2, trust_prop) %>% distinct()

trust <- left_join(finalsample, WVStrust)

