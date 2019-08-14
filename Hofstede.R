### Hofstede ###

Hofstede <- fread("D:/Maria/Hofstede/hofstede.dimensions.csv")
names(Hofstede) <- c("IOC", "country", "power_dis", "indiv_coll", "mas_fem", "unc_avoid", "long_term", "indulg")

### Data Frame: Indulgence (Hofstede) ###
Hofstedeindulgence <- Hofstede %>% select(IOC, indulg)

indulgenceHof <- left_join(finalsample, Hofstedeindulgence)

### Data Frame: Long-Term Orientation (Hofstede) ###
Hofstedelongterm <- Hofstede %>% select(IOC, long_term)

longtermHof <- left_join(finalsample, Hofstedelongterm)

### Data Frame: Uncertainty Avoidance (Hofstede) ###
Hofstedeuncavoid <- Hofstede %>% select(IOC, unc_avoid)

uncavoidHof <- left_join(finalsample, Hofstedeuncavoid)

### Data Frame: Collectivism (Hofstede) ###
Hofstedecollect <- Hofstede %>% select(IOC, indiv_coll)

collect <- left_join(finalsample, Hofstedecollect)

rm(Hofstedecollect, Hofstedeindulgence, Hofstedelongterm, Hofstedeuncavoid)
