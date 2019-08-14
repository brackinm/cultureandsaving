# SOEP variables

### Gather personal information from the PGEN data file. This includes MARITAL STATUS, EDUCATIONAL STATUS and EMPLOYMENT STATUS.

# Read in file and select variables of interest.
personaldf <- fread("D:/Maria/SOEP/CSVs/csv/pgen.csv") # file name: pgen
personaldf <- personaldf %>% select(hid, pid, pgfamstd, pgisced97, pgemplst, pgstib, syear)

### Gather household financial information from the $H files. This includes SAVING (Y/N), AMOUNT OF SAVING, NET INCOME and CHILDREN IN HOUSEHOLD UNDER 16 (Y/N)
# Must use RAW household data files and extract variables of interest (different coding for different years)

# 1992 - 1994 uses []H5001, []H5002, []H49
financial92 <- fread("D:/Maria/SOEP/CSVs/csv/raw/ih.csv") # file name: ih 
financial92 <- financial92 %>% select(hid, ih5001, ih5002, ih49, ih52, syear)
financial93 <- fread("D:/Maria/SOEP/CSVs/csv/raw/jh.csv") # file name: jh 
financial93 <- financial93 %>% select(hid, jh5001, jh5002, jh49, jh52, syear)
financial94 <- fread("D:/Maria/SOEP/CSVs/csv/raw/kh.csv") # file name: kh 
financial94 <- financial94 %>% select(hid, kh5001, kh5002, kh49, kh52, syear)

# 1995 - 1998 uses []H5101, []H5102, []H50
financial95 <- fread("D:/Maria/SOEP/CSVs/csv/raw/lh.csv") # file name: lh 
financial95 <- financial95 %>% select(hid, lh5101, lh5102, lh50, lh53, syear)
financial96 <- fread("D:/Maria/SOEP/CSVs/csv/raw/mh.csv") # file name: mh 
financial96 <- financial96 %>% select(hid, mh5101, mh5102, mh50, mh53, syear)
financial97 <- fread("D:/Maria/SOEP/CSVs/csv/raw/nh.csv") # file name: nh 
financial97 <- financial97 %>% select(hid, nh5101, nh5102, nh50, nh58, syear)
financial98 <- fread("D:/Maria/SOEP/CSVs/csv/raw/oh.csv") # file name: oh 
financial98 <- financial98 %>% select(hid, oh5101, oh5102, oh50, oh54, syear)

# 1999 uses PH5201, PH5202, PH50
financial99 <- fread("D:/Maria/SOEP/CSVs/csv/raw/ph.csv") # file name: ph 
financial99 <- financial99 %>% select(hid, ph5201, ph5202, ph50, ph54, syear)

# 2000 uses QH5601, QH5602, QH54
financial00 <- fread("D:/Maria/SOEP/CSVs/csv/raw/qh.csv") # file name: qh 
financial00 <- financial00 %>% select(hid, qh5601, qh5602, qh54, qh60, syear)

# 2001 - 2002 uses []H5101, []H5102, RH49 (2001), SH4901 (2002)
financial01 <- fread("D:/Maria/SOEP/CSVs/csv/raw/rh.csv") # file name: rh 
financial01 <- financial01 %>% select(hid, rh5101, rh5102, rh49, rh56, syear)
financial02 <- fread("D:/Maria/SOEP/CSVs/csv/raw/sh.csv") # file name: sh 
financial02 <- financial02 %>% select(hid, sh5101, sh5102, sh4901, sh58, syear)

# 2003 - 2004 uses []H5001, []H5002, []H4801
financial03 <- fread("D:/Maria/SOEP/CSVs/csv/raw/th.csv") # file name: th 
financial03 <- financial03 %>% select(hid, th5001, th5002, th4801, th53, syear)
financial04 <- fread("D:/Maria/SOEP/CSVs/csv/raw/uh.csv") # file name: uh 
financial04 <- financial04 %>% select(hid, uh5001, uh5002, uh4801, uh53, syear)

# 2005 - 2007 uses []H5201, []H5202, []H5101
financial05 <- fread("D:/Maria/SOEP/CSVs/csv/raw/vh.csv") # file name: vh 
financial05 <- financial05 %>% select(hid, vh5201, vh5202, vh5101, vh60, syear)
financial06 <- fread("D:/Maria/SOEP/CSVs/csv/raw/wh.csv") # file name: wh 
financial06 <- financial06 %>% select(hid, wh5201, wh5202, wh5101, wh60, syear)
financial07 <- fread("D:/Maria/SOEP/CSVs/csv/raw/xh.csv") # file name: xh 
financial07 <- financial07 %>% select(hid, xh5201, xh5202, xh5101, xh61, syear)

# 2008 - 2009 uses []H5301, []H5302, []H5201
financial08 <- fread("D:/Maria/SOEP/CSVs/csv/raw/yh.csv") # file name: yh 
financial08 <- financial08 %>% select(hid, yh5301, yh5302, yh5201, yh61, syear)
financial09 <- fread("D:/Maria/SOEP/CSVs/csv/raw/zh.csv") # file name: zh 
financial09 <- financial09 %>% select(hid, zh5301, zh5302, zh5201, zh68, syear)

# 2010 uses BAH5401, BAH5402, BAH5201
financial10 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bah.csv") # file name: bah 
financial10 <- financial10 %>% select(hid, bah5401, bah5402, bah5201, bah63, syear)

# 2011 - 2013 uses []H5201, []H5202, []H5101
financial11 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bbh.csv") # file name: bbh 
financial11 <- financial11 %>% select(hid, bbh5201, bbh5202, bbh5101, bbh63, syear)
financial12 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bch.csv") # file name: bch 
financial12 <- financial12 %>% select(hid, bch5201, bch5202, bch5101, bch62, syear)
financial13 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bdh.csv") # file name: bdh 
financial13 <- financial13 %>% select(hid, bdh5201, bdh5202, bdh5101, bdh63, syear)

# 2014 uses BEH5501, BEH5502, BEH5401 
financial14 <- fread("D:/Maria/SOEP/CSVs/csv/raw/beh.csv") # file name: beh 
financial14 <- financial14 %>% select(hid, beh5501, beh5502, beh5401, beh72, syear)

# 2015 uses BFH5005, BFH5004, BFH4901
financial15 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bfh.csv") # file name: bfh 
financial15 <- financial15 %>% select(hid, bfh5005, bfh5004, bfh4901, bfh70, syear)

# 2016 uses BGH6905, BGH6904, BGH6801
financial16 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bgh.csv") # file name: bgh 
financial16 <- financial16 %>% select(hid, bgh6905, bgh6904, bgh6801, syear)
financial16 <- add_column(financial16, kids_16 = NA, .after = 4)

# 2017 uses BHH_62_05, BHH_62_04, BHH_61_01
financial17 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bhh.csv") # file name: bhh 
financial17 <- financial17 %>% select(hid, bhh_62_05, bhh_62_04, bhh_61_01, syear)
financial17 <- add_column(financial17, kids_16 = NA, .after = 4)

# Rename columns and combine into a single data frame
names(financial92) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial93) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial94) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial95) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial96) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial97) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial98) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial99) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial00) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial01) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial02) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial03) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial04) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial05) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial06) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial07) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial08) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial09) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial10) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial11) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial12) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial13) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial14) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial15) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial16) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")
names(financial17) <- c("hid", "saving", "amt_saving", "net_income", "kids_16", "syear")

financialdf1 <- rbind(financial92, financial93, financial94, financial95, financial96, financial97, financial98, financial99, financial00, financial01, 
                       financial02, financial03, financial04, financial05, financial06, financial07, financial08, financial09, financial10, financial11, 
                       financial12, financial13, financial14, financial15, financial16, financial17)

### Gather additional financial information from HGEN file: MONTHLY HOUSEHOLD NET INCOME (EUR)
financialdf2 <- fread("D:/Maria/SOEP/CSVs/csv/hgen.csv") # file name: hgen
financialdf2 <- financialdf2 %>% select(hid, hghinc, syear)
names(financialdf2) <- c("hid", "net_income_2", "syear")

### Combine two financial data frames into a single data frame
financialdf <- left_join(financialdf1, financialdf2)

write.csv(financialdf,"D:/Maria/R/financialdffinal.csv", row.names = FALSE)

# Remove unnecessary objects from workspace
rm(financial92, financial93, financial94, financial95, financial96, financial97, financial98, financial99, financial00, financial01, financial02, 
   financial03, financial04, financial05, financial06, financial07, financial08, financial09, financial10, financial11, financial12, financial13, 
   financial14, financial15, financial16, financial17, financialdf1, financialdf2)

### Gather information from PEQUIV: STATE OF RESIDENCE 
statedf <- fread("D:/Maria/SOEP/CSVs/csv/pequiv.csv") # file name: pequiv
statedf <- statedf %>% select(hid, pid, l11101, syear)
names(statedf) <- c("hid", "pid", "state", "syear")

write.csv(statedf,"D:/Maria/R/statedffinal.csv", row.names = FALSE)

### Gather information from PBRUTTO: HOUSEHOLD HEAD
headdf <- fread("D:/Maria/SOEP/CSVs/csv/pbrutto.csv") # file name: pbrutto
headdf <- headdf %>% select(hid, pid, stell_h, syear)
names(headdf) <- c("hid", "pid", "hh_head", "syear")

write.csv(headdf, "D:/Maria/R/headdffinal.csv", row.names = FALSE)

## Gather information from KIDLONG: NUMBER OF PEOPLE IN HOUSEHOLD and NUMBER OF CHILDREN UNDER 16
childdf <- fread("D:/Maria/SOEP/CSVs/csv/kidlong.csv") # file name: kidlong
childdf <- childdf %>% select(hid, k_size, k_nrkid, syear)
names(childdf) <- c("hid", "no_people", "no_kids", "syear")

write.csv(childdf, "D:/Maria/R/childdffinal.csv", row.names = FALSE)


## Gather information from HBRUTTO: CURRENT HOUSEHOLD SIZE
sizedf <- fread("D:/Maria/SOEP/CSVs/csv/hbrutto.csv") # file name: hbrutto
sizedf <- sizedf %>% select(hid, syear, hhgr)

write.csv(sizedf, "D:/Maria/R/sizedffinal.csv", row.names = FALSE)

### Gather information from migration file (PPFAD), including BIRTH YEAR, SEX, MIGRATION BACKGROUND, COUNTRY OF ORIGIN, GERMAN BIRTH, IMMIGRATION YEAR
# Import migration data 
migration <- fread("D:/Maria/SOEP/CSVs/csv/raw/ppfad.csv") # file name: ppfad (raw)

# This data is structured differently so I need to include household information for each of the survey waves (i - be) in the columns.
migbackdf <- migration %>% select(ihhnr, jhhnr, khhnr, lhhnr, mhhnr, nhhnr, ohhnr, phhnr, qhhnr, rhhnr, shhnr, thhnr, uhhnr, vhhnr, whhnr, xhhnr,
                                  yhhnr, zhhnr, bahhnr, bbhhnr, bchhnr, bdhhnr, behhnr, bfhhnr, bghhnr, bhhhnr, sex, gebjahr, germborn, migback, corigin, pid) 

# Sort by indirect migration background and age
mig1992 <- migbackdf %>% select(ihhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 1992)
mig1993 <- migbackdf %>% select(jhhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 1993)
mig1994 <- migbackdf %>% select(khhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 1994)
mig1995 <- migbackdf %>% select(lhhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 1995)
mig1996 <- migbackdf %>% select(mhhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 1996)
mig1997 <- migbackdf %>% select(nhhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 1997)
mig1998 <- migbackdf %>% select(ohhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 1998)
mig1999 <- migbackdf %>% select(phhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 1999)
mig2000 <- migbackdf %>% select(qhhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2000)
mig2001 <- migbackdf %>% select(rhhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2001)
mig2002 <- migbackdf %>% select(shhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2002)
mig2003 <- migbackdf %>% select(thhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2003)
mig2004 <- migbackdf %>% select(uhhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2004)
mig2005 <- migbackdf %>% select(vhhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2005)
mig2006 <- migbackdf %>% select(whhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2006)
mig2007 <- migbackdf %>% select(xhhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2007)
mig2008 <- migbackdf %>% select(yhhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2008)
mig2009 <- migbackdf %>% select(zhhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2009)
mig2010 <- migbackdf %>% select(bahhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2010)
mig2011 <- migbackdf %>% select(bbhhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2011)
mig2012 <- migbackdf %>% select(bchhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2012)
mig2013 <- migbackdf %>% select(bdhhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2013)
mig2014 <- migbackdf %>% select(behhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2014)
mig2015 <- migbackdf %>% select(bfhhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2015)
mig2016 <- migbackdf %>% select(bghhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2016)
mig2017 <- migbackdf %>% select(bhhhnr, sex, gebjahr, germborn, migback, corigin, pid) %>% mutate(syear = 2017)

# Rename columns and combine into a single data frame
names(mig1992) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig1993) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig1994) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig1995) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig1996) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig1997) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig1998) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig1999) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2000) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2001) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2002) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2003) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2004) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2005) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2006) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2007) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2008) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2009) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2010) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2011) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2012) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2013) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2014) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2015) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2016) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")
names(mig2017) <- c("hid", "sex", "birth_yr", "germborn", "migback", "corigin", "pid", "syear")

migrationdf <- rbind(mig1992, mig1993, mig1994, mig1995, mig1996, mig1997, mig1998, mig1999, mig2000, mig2001, mig2002, mig2003, mig2004, mig2005, mig2006, 
                       mig2007, mig2008, mig2009, mig2010, mig2011, mig2012, mig2013, mig2014, mig2015, mig2016, mig2017)

write.csv(migrationdf,"D:/Maria/R/migrationdf.csv", row.names = FALSE)

rm(migration, mig1992, mig1993, mig1994, mig1995, mig1996, mig1997, mig1998, mig1999, mig2000, mig2001, mig2002, mig2003, mig2004, mig2005, mig2006, mig2007, 
   mig2008, mig2009, mig2010, mig2011, mig2012, mig2013, mig2014, mig2015, mig2016, mig2017, migbackdf)
