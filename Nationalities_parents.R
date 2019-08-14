# Nationalities: parents
# Follows same steps as for individuals, mother then father

parents.nat <- fread("D:/Maria/SOEP/CSVs/csv/bioparen.csv") # file name: bioparen
parents.nat <- parents.nat %>% select(hhnr, persnr, fnr, mnr, bioyear, fnat, mnat)
names(parents.nat) <- c("hid","pid", "f_nr", "m_nr", "syear", "f_nat", "m_nat")
find.parent <- p1_absent$pid
parents.nat <- parents.nat %>% filter(pid %in% find.parent)

parental <- as.data.frame(levels(as.factor(parents.nat$pid)))
parental$pid <- parental$`levels(as.factor(parents.nat$pid))`
parental$`levels(as.factor(parents.nat$pid))` <- NULL

output <- NULL
nat1_m <- nation1 %>% filter(pid %in% parents.nat$m_nr)
for(mom in parents.nat$m_nr){
  a <- which(nat1_m$pid == mom)
  b <- nat1_m[a,]
  c <- levels(as.factor(b$corigin))
  d <- length(c)
  if(d > 1){
    e <- factor(as.factor(b$corigin))
    f <- names(which(max(table(e))==table(e)))
    if(length(f) > 1 ){
      f <- f[length(f)]
    }
    nat <- as.numeric(as.character(f))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 1){
    nat <- as.numeric(as.character(c))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 0){output <- append(output,NA)}
}

beep(0)

parental$output1_mom <- output

output <- NULL
nat1_f <- nation1 %>% filter(pid %in% parents.nat$f_nr)
for(dad in parents.nat$f_nr){
  a <- which(nat1_f$pid == dad)
  b <- nat1_f[a,]
  c <- levels(as.factor(b$corigin))
  d <- length(c)
  if(d > 1){
    e <- factor(as.factor(b$corigin))
    f <- names(which(max(table(e))==table(e)))
    if(length(f) > 1 ){
      f <- f[length(f)]
    }
    nat <- as.numeric(as.character(f))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 1){
    nat <- as.numeric(as.character(c))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 0){output <- append(output,NA)}
}

beep(0)

parental$output1_dad <- output

output <- NULL
out_pers <- NULL
nat2_m <- nation2 %>% filter(pid %in% parents.nat$m_nr)
for(mom in parents.nat$m_nr){
  a <- which(nat2_m$pid == mom)
  b <- nat2_m[a,]
  c <- levels(as.factor(b$nationality))
  d <- length(c)
  if(d > 1){
    e <- factor(as.factor(b$nationality))
    f <- names(which(max(table(e))==table(e)))
    if(length(f) > 1 ){
      f <- f[length(f)]
    }
    nat <- as.numeric(as.character(f))
    if(nat > 1){
      output <- append(output,nat)
      out_pers <- append(out_pers,pers)
    }
    if(nat <= 1){
      out_pers <- append(out_pers,pers)
      output <- append(output,NA)}
  }
  if(d == 1){
    nat <- as.numeric(as.character(c))
    if(nat > 1){
      out_pers <- append(out_pers,pers)
      output <- append(output,nat)}
    if(nat <= 1){
      out_pers <- append(out_pers,pers)
      output <- append(output,NA)}
  }
  if(d == 0){
    out_pers <- append(out_pers,pers)
    output <- append(output,NA)}
}

beep(0)

parental$output2_mom <- output

output <- NULL
out_pers <- NULL
nat2_f <- nation2 %>% filter(pid %in% parents.nat$f_nr)
for(dad in parents.nat$f_nr){
  a <- which(nat2_f$pid == dad)
  b <- nat2_f[a,]
  c <- levels(as.factor(b$nationality))
  d <- length(c)
  if(d > 1){
    e <- factor(as.factor(b$nationality))
    f <- names(which(max(table(e))==table(e)))
    if(length(f) > 1 ){
      f <- f[length(f)]
    }
    nat <- as.numeric(as.character(f))
    if(nat > 1){
      output <- append(output,nat)
      out_pers <- append(out_pers,pers)
    }
    if(nat <= 1){
      out_pers <- append(out_pers,pers)
      output <- append(output,NA)}
  }
  if(d == 1){
    nat <- as.numeric(as.character(c))
    if(nat > 1){
      out_pers <- append(out_pers,pers)
      output <- append(output,nat)}
    if(nat <= 1){
      out_pers <- append(out_pers,pers)
      output <- append(output,NA)}
  }
  if(d == 0){
    out_pers <- append(out_pers,pers)
    output <- append(output,NA)}
}

beep(0)

parental$output2_dad <- output


output <- vector()
nat3_m <- nation3 %>% filter(pid %in% parents.nat$m_nr)
for(mom in parents.nat$m_nr){
  a <- which(nat3_m$pid == mom)
  b <- nat3_m[a,]
  c <- levels(as.factor(b$int_nation))
  d <- length(c)
  if(d > 1){
    e <- factor(as.factor(b$int_nation))
    f <- names(which(max(table(e))==table(e)))
    if(length(f) > 1 ){
      f <- f[length(f)]
    }
    nat <- as.numeric(as.character(f))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 1){
    nat <- as.numeric(as.character(c))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 0){output <- append(output,NA)}
}
beep(0)

parental$output3_mom <- output

output <- vector()
nat3_f <- nation3 %>% filter(pid %in% parents.nat$f_nr)
for(dad in parents.nat$f_nr){
  a <- which(nat3_f$pid == dad)
  b <- nat3_f[a,]
  c <- levels(as.factor(b$int_nation))
  d <- length(c)
  if(d > 1){
    e <- factor(as.factor(b$int_nation))
    f <- names(which(max(table(e))==table(e)))
    if(length(f) > 1 ){
      f <- f[length(f)]
    }
    nat <- as.numeric(as.character(f))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 1){
    nat <- as.numeric(as.character(c))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 0){output <- append(output,NA)}
}
beep(0)

parental$output3_dad <- output


output <- vector()
nat4_m <- nation4 %>% filter(pid %in% parents.nat$m_nr)
for(mom in parents.nat$m_nr){
  a <- which(nat4_m$pid == mom)
  b <- nat4_m[a,]
  c <- levels(as.factor(b$prev_nation))
  d <- length(c)
  if(d > 1){
    e <- factor(as.factor(b$prev_nation))
    f <- names(which(max(table(e))==table(e)))
    if(length(f) > 1 ){
      f <- f[length(f)]
    }
    nat <- as.numeric(as.character(f))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 1){
    nat <- as.numeric(as.character(c))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 0){output <- append(output,NA)}
}
beep(0)

parental$output4_mom <- output

output <- vector()
nat4_f <- nation4 %>% filter(pid %in% parents.nat$f_nr)
for(dad in parents.nat$f_nr){
  a <- which(nat4_f$pid == dad)
  b <- nat4_f[a,]
  c <- levels(as.factor(b$prev_nation))
  d <- length(c)
  if(d > 1){
    e <- factor(as.factor(b$prev_nation))
    f <- names(which(max(table(e))==table(e)))
    if(length(f) > 1 ){
      f <- f[length(f)]
    }
    nat <- as.numeric(as.character(f))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 1){
    nat <- as.numeric(as.character(c))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 0){output <- append(output,NA)}
}
beep(0)

parental$output4_dad <- output


output <- vector()
nat6_m <- nation6 %>% filter(pid %in% parents.nat$m_nr)
for(mom in parents.nat$m_nr){
  a <- which(nat6_m$pid == mom)
  b <- nat6_m[a,]
  c <- levels(as.factor(b$count_sec_nation))
  d <- length(c)
  if(d > 1){
    e <- factor(as.factor(b$count_sec_nation))
    f <- names(which(max(table(e))==table(e)))
    if(length(f) > 1 ){
      f <- f[length(f)]
    }
    nat <- as.numeric(as.character(f))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 1){
    nat <- as.numeric(as.character(c))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 0){output <- append(output,NA)}
}
beep(0)

parental$output6_mom <- output

output <- vector()
nat6_f <- nation6 %>% filter(pid %in% parents.nat$f_nr)
for(dad in parents.nat$f_nr){
  a <- which(nat6_f$pid == dad)
  b <- nat6_f[a,]
  c <- levels(as.factor(b$count_sec_nation))
  d <- length(c)
  if(d > 1){
    e <- factor(as.factor(b$count_sec_nation))
    f <- names(which(max(table(e))==table(e)))
    if(length(f) > 1 ){
      f <- f[length(f)]
    }
    nat <- as.numeric(as.character(f))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 1){
    nat <- as.numeric(as.character(c))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 0){output <- append(output,NA)}
}
beep(0)

parental$output6_dad <- output

output <- vector()
nat7_m <- nation7 %>% filter(pid %in% parents.nat$m_nr)
for(mom in parents.nat$m_nr){
  a <- which(nat7_m$pid == mom)
  b <- nat7_m[a,]
  c <- levels(as.factor(b$country_birth))
  d <- length(c)
  if(d > 1){
    e <- factor(as.factor(b$country_birth))
    f <- names(which(max(table(e))==table(e)))
    if(length(f) > 1 ){
      f <- f[length(f)]
    }
    nat <- as.numeric(as.character(f))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 1){
    nat <- as.numeric(as.character(c))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 0){output <- append(output,NA)}
}
beep(0)

parental$output7_mom <- output

output <- vector()
nat7_f <- nation7 %>% filter(pid %in% parents.nat$f_nr)
for(dad in parents.nat$f_nr){
  a <- which(nat7_f$pid == dad)
  b <- nat7_f[a,]
  c <- levels(as.factor(b$country_birth))
  d <- length(c)
  if(d > 1){
    e <- factor(as.factor(b$country_birth))
    f <- names(which(max(table(e))==table(e)))
    if(length(f) > 1 ){
      f <- f[length(f)]
    }
    nat <- as.numeric(as.character(f))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 1){
    nat <- as.numeric(as.character(c))
    if(nat > 1){output <- append(output,nat)}
    if(nat <= 1){output <- append(output,NA)}
  }
  if(d == 0){output <- append(output,NA)}
}
beep(0)

parental$output7_dad <- output

parental <- parental %>% mutate(absent = ifelse(is.na(output1_mom) & is.na(output1_dad) & is.na(output2_mom) & is.na(output2_dad) & is.na(output3_mom) & 
                                                  is.na(output3_dad) &is.na(output4_mom) & is.na(output4_dad) & is.na(output6_mom) & is.na(output6_dad) & 
                                                  is.na(output7_mom) & is.na(output7_dad),0,1))
parental_absent <- parental %>% filter(absent==0)

p1$pid <- as.numeric(as.character(p1$pid))
parental$pid <- as.numeric(as.character(parental$pid))
p1$absent <- NULL
parental$absent <- NULL


# Remove unnecessary objects from workspace
rm(b, blah, blah2, blah3, house_nat, house_out, house1, nat1_f, nat1_m, nat2, nat2_f, nat2_m, nat3, nat3_f, nat3_m, nat4, nat4_f, nat4_m, nat5, nat6, nat6_f,
   nat6_m, nat7, nat7_f, nat7_m, nation1, nation2, nation3, nation4, nation5, nation6, nation7, nation8, parents, parents.nat, a, b_yr, c, d, dad, e, f, 
   find.parent, g, hid, ho, hous, hous_out, mom, nat, nat_out, nati, nationality, out_pers, output, pers, pers_out, timer, years, yr)
