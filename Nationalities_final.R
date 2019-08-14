# Nationalities: final steps

# Join together p1 and parental data frames
all_nationalities <- left_join(p1, parental)

# Assign nationality based on stepwise approach (0 if no nationality found)
all_nationalities <- all_nationalities %>% mutate(nationality = ifelse(!is.na(output2), output2, ifelse(!is.na(output3), output3, 
                                                                    ifelse(!is.na(output4), output4, ifelse(!is.na(output5), output5, 
                                                                        ifelse(!is.na(output6), output6, ifelse(!is.na(output7), output7, 
                                                                            ifelse(!is.na(output1_mom), output1_mom, 
                                                                                ifelse(!is.na(output1_dad), output1_dad, ifelse(!is.na(output2_mom), output2_mom, 
                                                                                    ifelse(!is.na(output2_dad), output2_dad, ifelse(!is.na(output3_mom), output3_mom,
                                                                                        ifelse(!is.na(output3_dad), output3_dad, ifelse(!is.na(output4_mom), output4_mom,
                                                                                            ifelse(!is.na(output4_dad), output4_dad, ifelse(!is.na(output6_mom), output6_mom, 
                                                                                                ifelse(!is.na(output6_dad), output6_dad, ifelse(!is.na(output7_mom), output7_mom,
                                                                                                    ifelse(!is.na(output7_dad), output7_dad, 0)))))))))))))))))))
# Filter by individuals who have a (non-German) nationality
nationalities_final <- all_nationalities %>% select(pid, nationality) %>% filter(nationality > 0)


