# Final Sample Creation

# Add (non-German) nationality information to core data frame
finalworkingdf2 <- left_join(finalworkingdf, nationalities_final)

# corigin==1 (born in Germany)
finalworkingdf3 <- finalworkingdf2 %>% filter(corigin==1)

# Income of at least 350 EUR
finalworkingdf4 <- finalworkingdf3 %>% filter(curr_inc>350)

# Must have nationality
finalworkingdf5 <- finalworkingdf4 %>% filter(nationality>0)

# Exclude regional and no nationality (eastern european, no nationality, ex-DDR, east German)
finalworkingdf6 <- finalworkingdf5 %>% filter(nationality != 222) %>% filter(nationality != 98) %>% filter(nationality != 7) %>% filter(nationality != 8)

# Years 1992 - 2014 
finalworkingdf7 <- finalworkingdf6 %>% filter(syear > 1991 & syear < 2015)

# Remove one observation with improbable income and saving information
finalworkingdf8 <- finalworkingdf7 %>% filter(hid != 824380)

# Make a version with recent years included
finalworkingdf9 <- finalworkingdf6 %>% filter(hid != 824380)

## SAVE FINAL SAMPLE
finalsample <- finalworkingdf8 %>% distinct()

# SAVE SAMPLE WITH YEARS 1992-2017
finalsample2 <- finalworkingdf9 %>% distinct()


# Remove unnecessary items from workspace
rm(finalworkingdf2, finalworkingdf3, finalworkingdf4, finalworkingdf5, finalworkingdf6, finalworkingdf7, finalworkingdf8, finalworkingdf9)
