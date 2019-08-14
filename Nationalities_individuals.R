# Nationalities: individuals

# Create data frame for nationalities, adding new columns for each step of the procedure.

p1 <- as.data.frame(levels(as.factor(finalworkingdf$pid)))
p1$pid <- p1$`levels(as.factor(finalworkingdf$pid))`
p1$`levels(as.factor(finalworkingdf$pid))` <- NULL

# The "corigin" variable will be 1 (Germany) for all indirect migrants, so this is not relevant for individuals in our sample.
p1$output1 <- NA

# Step 1: non-German nationalities
nat2 <- nation2 %>% filter(pid %in% p1$pid)
output <- NULL
out_pers <- NULL
for(pers in p1$pid){
  a <- which(nat2$pid == pers)
  b <- nat2[a,]
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
p1$output2 <- output


# Step 2: information from interviewer
output <- vector()
nat3 <- nation3 %>% filter(pid %in% p1$pid)
for(pers in p1$pid){
  a <- which(nat3$pid == pers)
  b <- nat3[a,]
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
p1$output3 <- output


# Step 3: past citizenships
output <- vector()
nat4 <- nation4 %>% filter(pid %in% p1$pid)
for(pers in p1$pid){
  a <- which(nat4$pid == pers)
  b <- nat4[a,]
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
p1$output4 <- output


# Step 5: second citizenship
output <- vector()
nat6 <- nation6 %>% filter(pid %in% p1$pid)
for(pers in p1$pid){
  a <- which(nat6$pid == pers)
  b <- nat6[a,]
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
p1$output6 <- output


# Step 7: country of birth
output <- vector()
nat7 <- nation7 %>% filter(pid %in% p1$pid)
for(pers in p1$pid){
  a <- which(nat7$pid == pers)
  b <- nat7[a,]
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
p1$output7 <- output


# Search for child citizenships (at household level)
nationality <- vector()
hid <- vector()
years <- vector()
timer = 0
house1 <- finalworkingdf %>% select(hid,syear) 
nat5 <- nation5 %>% distinct()
for(hous in house1$hid){
  a <- which(nat5$hid == hous)
  timer = timer + 1
  if(length(a) == 0){
    nationality[timer] <- NA
    hid[timer] <- hous
    years[timer] <- NA
  }
  if(length(a) != 0){
    b <- nat5[a,]
    b_yr <- b$syear
    for(yr in b_yr){
      timer = timer + 1
      c <- subset(b, syear == yr)
      if(length(c) > 1){
        c <- c[1]
      }
      nat <- c$child_nat
      if(nat > 1){
        nationality[timer] <- nat
        hid[timer] <- hous
        years[timer] <- yr
      }
      if(nat <= 1){
        nationality[timer] <- NA
        hid[timer] <- hous
        years[timer] <- yr
      }
    }}
}
beep(0)
house_out = data.frame(nationality, hid, years)
house_out$total <- ifelse(is.na(nationality) & is.na(hid) & is.na(years),0,1)
house_out <- house_out %>% filter(total == 1)
house_out$total <- NULL
house_out <- house_out %>% distinct()
house_nat <- house_out %>% filter(!is.na(nationality))

p1<- p1 %>% mutate(absent = ifelse(is.na(output1) & is.na(output2) & is.na(output3) & is.na(output4) & is.na(output6) & is.na(output7),0,1))
p1_absent <- p1 %>% filter(absent==0)

pers_out <- NULL
hous_out <- NULL
nat_out <- NULL
for(pers in p1_absent$pid){
  a <- which(finalworkingdf$pid == pers)
  b <- finalworkingdf[a,]
  c <- levels(as.factor(b$hid))
  d <- length(c)
  if(d >= 1){
    for(ho in c){
      e <- which(house_nat$hid == ho)
      f <- house_nat[a,]
      g <- levels(as.factor(f$nationality))
      for(nati in g){
        pers_out <- append(pers_out,pers)
        hous_out <- append(hous_out,as.numeric(as.character(ho)))
        nat_out <- append(nat_out,as.numeric(as.character(nati)))
      }
    }
  }
}
beep(0)

blah = data.frame(pers_out,hous_out,nat_out)
names(blah) <- c("pid","hid", "output5")

pers_out <- NULL
nat_out <- NULL
for(pers in blah$pid){
  a <- which(blah$pid == pers)
  b <- blah[a,]
  c <- levels(as.factor(b$output5))
  d <- c[length(c)]
  pers_out <- append(pers_out,pers)
  nat_out <- append(nat_out,as.numeric(as.character(d)))
}
beep(0)

blah2 = data.frame(pers_out,nat_out)
names(blah2) <- c("pid","output5")
blah2 <- blah2 %>% distinct()

pers_out <- NULL
nat_out <- NULL
for(pers in p1$pid){
  a <- which(blah2$pid == pers)
  b <- blah2[a,]
  c <- levels(as.factor(b$output5))
  d <- length(c)
  if(d >= 1){
    pers_out <- append(pers_out,pers)
    nat_out <- append(nat_out,as.numeric(as.character(c)))
  }
  if(d < 1){
    pers_out <- append(pers_out,pers)
    nat_out <- append(nat_out,NA)
  }
}
beep(0)

blah3 = data.frame(pers_out,nat_out)
names(blah3) <- c("pid","output5")
p1$output5 <- blah3$output5
p1$absent <- NULL

p1<- p1 %>% mutate(absent = ifelse(is.na(output1) & is.na(output2) & is.na(output3) & is.na(output4) & is.na(output5) & is.na(output6) & is.na(output7),0,1))
p1_absent <- p1 %>% filter(absent==0)
