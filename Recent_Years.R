# Recent Years Included (2015-2017) 


## Calculate number of kids and adults
finalsample2 <- finalsample2 %>% mutate(drop = ifelse(kids_16==1 & no_kids<0, 1, 0))
finalsample2 <- finalsample2 %>% filter(drop == 0)

finalsample2 <- finalsample2 %>% mutate(no_kids = ifelse(kids_16==2, 0, no_kids)) # no children in household
finalsample2 <- finalsample2 %>% mutate(adults = hhgr-no_kids)


## Dummy coding for number of kids
finalsample2 <- finalsample2 %>% mutate(kid_cat = ifelse(no_kids==0, "no kids", # No children
                                                                 ifelse(no_kids==1, "1 kid", # One child
                                                                        ifelse(no_kids==2, "2 kids", # Two children
                                                                               ifelse(no_kids>=3, "3+ kids", NA))))) # Three or more children
