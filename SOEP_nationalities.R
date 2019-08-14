# SOEP Nationality Variables

# Step 1: Country of Origin (PPFAD)
corigin <- fread("D:/Maria/SOEP/CSVs/csv/raw/ppfad.csv") # file name: ppfad

corigin84 <- corigin %>% select(ahhnr, corigin, persnr) %>% mutate(syear = 1984)
corigin85 <- corigin %>% select(bhhnr, corigin, persnr) %>% mutate(syear = 1985)
corigin86 <- corigin %>% select(chhnr, corigin, persnr) %>% mutate(syear = 1986)
corigin87 <- corigin %>% select(dhhnr, corigin, persnr) %>% mutate(syear = 1987)
corigin88 <- corigin %>% select(ehhnr, corigin, persnr) %>% mutate(syear = 1988)
corigin89 <- corigin %>% select(fhhnr, corigin, persnr) %>% mutate(syear = 1989)
corigin90 <- corigin %>% select(ghhnr, corigin, persnr) %>% mutate(syear = 1990)
corigin91 <- corigin %>% select(hhhnr, corigin, persnr) %>% mutate(syear = 1991)
corigin92 <- corigin %>% select(ihhnr, corigin, persnr) %>% mutate(syear = 1992)
corigin93 <- corigin %>% select(jhhnr, corigin, persnr) %>% mutate(syear = 1993)
corigin94 <- corigin %>% select(khhnr, corigin, persnr) %>% mutate(syear = 1994)
corigin95 <- corigin %>% select(lhhnr, corigin, persnr) %>% mutate(syear = 1995)
corigin96 <- corigin %>% select(mhhnr, corigin, persnr) %>% mutate(syear = 1996)
corigin97 <- corigin %>% select(nhhnr, corigin, persnr) %>% mutate(syear = 1997)
corigin98 <- corigin %>% select(ohhnr, corigin, persnr) %>% mutate(syear = 1998)
corigin99 <- corigin %>% select(phhnr, corigin, persnr) %>% mutate(syear = 1999)
corigin00 <- corigin %>% select(qhhnr, corigin, persnr) %>% mutate(syear = 2000)
corigin01 <- corigin %>% select(rhhnr, corigin, persnr) %>% mutate(syear = 2001)
corigin02 <- corigin %>% select(shhnr, corigin, persnr) %>% mutate(syear = 2002)
corigin03 <- corigin %>% select(thhnr, corigin, persnr) %>% mutate(syear = 2003)
corigin04 <- corigin %>% select(uhhnr, corigin, persnr) %>% mutate(syear = 2004)
corigin05 <- corigin %>% select(vhhnr, corigin, persnr) %>% mutate(syear = 2005)
corigin06 <- corigin %>% select(whhnr, corigin, persnr) %>% mutate(syear = 2006)
corigin07 <- corigin %>% select(xhhnr, corigin, persnr) %>% mutate(syear = 2007)
corigin08 <- corigin %>% select(yhhnr, corigin, persnr) %>% mutate(syear = 2008)
corigin09 <- corigin %>% select(zhhnr, corigin, persnr) %>% mutate(syear = 2009)
corigin10 <- corigin %>% select(bahhnr, corigin, persnr) %>% mutate(syear = 2010)
corigin11 <- corigin %>% select(bbhhnr, corigin, persnr) %>% mutate(syear = 2011)
corigin12 <- corigin %>% select(bchhnr, corigin, persnr) %>% mutate(syear = 2012)
corigin13 <- corigin %>% select(bdhhnr, corigin, persnr) %>% mutate(syear = 2013)
corigin14 <- corigin %>% select(behhnr, corigin, persnr) %>% mutate(syear = 2014)
corigin15 <- corigin %>% select(bfhhnr, corigin, persnr) %>% mutate(syear = 2015)
corigin16 <- corigin %>% select(bghhnr, corigin, persnr) %>% mutate(syear = 2016)
corigin17 <- corigin %>% select(bhhhnr, corigin, persnr) %>% mutate(syear = 2017)

names(corigin84) <- c("hid", "corigin", "pid", "syear")
names(corigin85) <- c("hid", "corigin", "pid", "syear")
names(corigin86) <- c("hid", "corigin", "pid", "syear")
names(corigin87) <- c("hid", "corigin", "pid", "syear")
names(corigin88) <- c("hid", "corigin", "pid", "syear")
names(corigin89) <- c("hid", "corigin", "pid", "syear")
names(corigin90) <- c("hid", "corigin", "pid", "syear")
names(corigin91) <- c("hid", "corigin", "pid", "syear")
names(corigin92) <- c("hid", "corigin", "pid", "syear")
names(corigin93) <- c("hid", "corigin", "pid", "syear")
names(corigin94) <- c("hid", "corigin", "pid", "syear")
names(corigin95) <- c("hid", "corigin", "pid", "syear")
names(corigin96) <- c("hid", "corigin", "pid", "syear")
names(corigin97) <- c("hid", "corigin", "pid", "syear")
names(corigin98) <- c("hid", "corigin", "pid", "syear")
names(corigin99) <- c("hid", "corigin", "pid", "syear")
names(corigin00) <- c("hid", "corigin", "pid", "syear")
names(corigin01) <- c("hid", "corigin", "pid", "syear")
names(corigin02) <- c("hid", "corigin", "pid", "syear")
names(corigin03) <- c("hid", "corigin", "pid", "syear")
names(corigin04) <- c("hid", "corigin", "pid", "syear")
names(corigin05) <- c("hid", "corigin", "pid", "syear")
names(corigin06) <- c("hid", "corigin", "pid", "syear")
names(corigin07) <- c("hid", "corigin", "pid", "syear")
names(corigin08) <- c("hid", "corigin", "pid", "syear")
names(corigin09) <- c("hid", "corigin", "pid", "syear")
names(corigin10) <- c("hid", "corigin", "pid", "syear")
names(corigin11) <- c("hid", "corigin", "pid", "syear")
names(corigin12) <- c("hid", "corigin", "pid", "syear")
names(corigin13) <- c("hid", "corigin", "pid", "syear")
names(corigin14) <- c("hid", "corigin", "pid", "syear")
names(corigin15) <- c("hid", "corigin", "pid", "syear")
names(corigin16) <- c("hid", "corigin", "pid", "syear")
names(corigin17) <- c("hid", "corigin", "pid", "syear")

nation1 <- rbind(corigin84, corigin85, corigin86, corigin87, corigin88, corigin89, corigin90, corigin91, corigin92, corigin93, corigin94, corigin95, corigin96, 
                 corigin97, corigin98, corigin99, corigin00, corigin01, corigin02, corigin03, corigin04, corigin05, corigin06, corigin07, corigin08, corigin09, 
                 corigin10, corigin11, corigin12, corigin13, corigin14, corigin15, corigin16, corigin17)

rm(corigin84, corigin85, corigin86, corigin87, corigin88, corigin89, corigin90, corigin91, corigin92, corigin93, corigin94, corigin95, corigin96, 
   corigin97, corigin98, corigin99, corigin00, corigin01, corigin02, corigin03, corigin04, corigin05, corigin06, corigin07, corigin08, corigin09, 
   corigin10, corigin11, corigin12, corigin13, corigin14, corigin15, corigin16, corigin17, corigin)

# Step 2: Nationality (PGEN)
nation2 <- fread("D:/Maria/SOEP/CSVs/csv/pgen.csv")
nation2 <- nation2 %>% select(hid, pid, pgnation, syear)
names(nation2) <- c("hid", "pid", "nationality", "syear")

# Step 3: Interviewer Nationality (PBRUTTO)
#interview84 <- fread("D:/Maria/SOEP/CSVs/csv/raw/apbrutto.csv") # file name: apbrutto (PNAT NOT AVAILABLE 1984)
#interview84 <- interview84 %>% select(ahhnr, persnr, apnat, syear)
interview85 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bpbrutto.csv") # file name: bpbrutto
interview85 <- interview85 %>% select(hid, pid, bpnat, syear)
interview86 <- fread("D:/Maria/SOEP/CSVs/csv/raw/cpbrutto.csv") # file name: cpbrutto
interview86 <- interview86 %>% select(hid, pid, cpnat, syear)
interview87 <- fread("D:/Maria/SOEP/CSVs/csv/raw/dpbrutto.csv") # file name: dpbrutto
interview87 <- interview87 %>% select(hid, pid, dpnat, syear)
interview88 <- fread("D:/Maria/SOEP/CSVs/csv/raw/epbrutto.csv") # file name: epbrutto
interview88 <- interview88 %>% select(hid, pid, epnat, syear)
interview89 <- fread("D:/Maria/SOEP/CSVs/csv/raw/fpbrutto.csv") # file name: fpbrutto
interview89 <- interview89 %>% select(hid, pid, fpnat, syear)
interview90 <- fread("D:/Maria/SOEP/CSVs/csv/raw/gpbrutto.csv") # file name: gpbrutto
interview90 <- interview90 %>% select(hid, pid, gpnat, syear)
interview91 <- fread("D:/Maria/SOEP/CSVs/csv/raw/hpbrutto.csv") # file name: hpbrutto
interview91 <- interview91 %>% select(hid, pid, hpnat, syear)
interview92 <- fread("D:/Maria/SOEP/CSVs/csv/raw/ipbrutto.csv") # file name: ipbrutto
interview92 <- interview92 %>% select(hid, pid, ipnat, syear)
interview93 <- fread("D:/Maria/SOEP/CSVs/csv/raw/jpbrutto.csv") # file name: jpbrutto
interview93 <- interview93 %>% select(hid, pid, jpnat, syear)
interview94 <- fread("D:/Maria/SOEP/CSVs/csv/raw/kpbrutto.csv") # file name: kpbrutto
interview94 <- interview94 %>% select(hid, pid, kpnat, syear)
interview95 <- fread("D:/Maria/SOEP/CSVs/csv/raw/lpbrutto.csv") # file name: lpbrutto
interview95 <- interview95 %>% select(hid, pid, lpnat, syear)
interview96 <- fread("D:/Maria/SOEP/CSVs/csv/raw/mpbrutto.csv") # file name: mpbrutto
interview96 <- interview96 %>% select(hid, pid, mpnat, syear)
interview97 <- fread("D:/Maria/SOEP/CSVs/csv/raw/npbrutto.csv") # file name: npbrutto
interview97 <- interview97 %>% select(hid, pid, npnat, syear)
interview98 <- fread("D:/Maria/SOEP/CSVs/csv/raw/opbrutto.csv") # file name: opbrutto
interview98 <- interview98 %>% select(hid, pid, opnat, syear)
interview99 <- fread("D:/Maria/SOEP/CSVs/csv/raw/ppbrutto.csv") # file name: ppbrutto
interview99 <- interview99 %>% select(hid, pid, ppnat, syear)
interview00 <- fread("D:/Maria/SOEP/CSVs/csv/raw/qpbrutto.csv") # file name: qpbrutto
interview00 <- interview00 %>% select(hid, pid, qpnat, syear)
interview01 <- fread("D:/Maria/SOEP/CSVs/csv/raw/rpbrutto.csv") # file name: rpbrutto
interview01 <- interview01 %>% select(hid, pid, rpnat, syear)
interview02 <- fread("D:/Maria/SOEP/CSVs/csv/raw/spbrutto.csv") # file name: spbrutto
interview02 <- interview02 %>% select(hid, pid, spnat, syear)
interview03 <- fread("D:/Maria/SOEP/CSVs/csv/raw/tpbrutto.csv") # file name: tpbrutto
interview03 <- interview03 %>% select(hid, pid, tpnat, syear)
interview04 <- fread("D:/Maria/SOEP/CSVs/csv/raw/upbrutto.csv") # file name: upbrutto
interview04 <- interview04 %>% select(hid, pid, upnat, syear)
interview05 <- fread("D:/Maria/SOEP/CSVs/csv/raw/vpbrutto.csv") # file name: vpbrutto
interview05 <- interview05 %>% select(hid, pid, vpnat, syear)
interview06 <- fread("D:/Maria/SOEP/CSVs/csv/raw/wpbrutto.csv") # file name: wpbrutto
interview06 <- interview06 %>% select(hid, pid, wpnat, syear)
interview07 <- fread("D:/Maria/SOEP/CSVs/csv/raw/xpbrutto.csv") # file name: xpbrutto
interview07 <- interview07 %>% select(hid, pid, xpnat, syear)
interview08 <- fread("D:/Maria/SOEP/CSVs/csv/raw/ypbrutto.csv") # file name: ypbrutto
interview08 <- interview08 %>% select(hid, pid, ypnat, syear)
interview09 <- fread("D:/Maria/SOEP/CSVs/csv/raw/zpbrutto.csv") # file name: zpbrutto
interview09 <- interview09 %>% select(hid, pid, zpnat, syear)
interview10 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bapbrutto.csv") # file name: bapbrutto
interview10 <- interview10 %>% select(hid, pid, bapnat, syear)
interview11 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bbpbrutto.csv") # file name: bbpbrutto
interview11 <- interview11 %>% select(hid, pid, bbpnat, syear)
interview12 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bcpbrutto.csv") # file name: bcpbrutto
interview12 <- interview12 %>% select(hid, pid, bcpnat, syear)
interview13 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bdpbrutto.csv") # file name: bdpbrutto
interview13 <- interview13 %>% select(hid, pid, bdpnat, syear)
interview14 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bepbrutto.csv") # file name: bepbrutto
interview14 <- interview14 %>% select(hid, pid, bepnat, syear)
interview15 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bfpbrutto.csv") # file name: bfpbrutto
interview15 <- interview15 %>% select(hid, pid, bfpnat, syear)
interview16 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bgpbrutto.csv") # file name: bgpbrutto
interview16 <- interview16 %>% select(hid, pid, bgpnat, syear)
interview17 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bhpbrutto.csv") # file name: bhpbrutto
interview17 <- interview17 %>% select(hid, pid, bhpnat, syear)

#names(interview84) <- c("hh_nr_wv", "pers_nr", "int_nation", "s_year")
names(interview85) <- c("hid", "pid", "int_nation", "syear")
names(interview86) <- c("hid", "pid", "int_nation", "syear")
names(interview87) <- c("hid", "pid", "int_nation", "syear")
names(interview88) <- c("hid", "pid", "int_nation", "syear")
names(interview89) <- c("hid", "pid", "int_nation", "syear")
names(interview90) <- c("hid", "pid", "int_nation", "syear")
names(interview91) <- c("hid", "pid", "int_nation", "syear")
names(interview92) <- c("hid", "pid", "int_nation", "syear")
names(interview93) <- c("hid", "pid", "int_nation", "syear")
names(interview94) <- c("hid", "pid", "int_nation", "syear")
names(interview95) <- c("hid", "pid", "int_nation", "syear")
names(interview96) <- c("hid", "pid", "int_nation", "syear")
names(interview97) <- c("hid", "pid", "int_nation", "syear")
names(interview98) <- c("hid", "pid", "int_nation", "syear")
names(interview99) <- c("hid", "pid", "int_nation", "syear")
names(interview00) <- c("hid", "pid", "int_nation", "syear")
names(interview01) <- c("hid", "pid", "int_nation", "syear")
names(interview02) <- c("hid", "pid", "int_nation", "syear")
names(interview03) <- c("hid", "pid", "int_nation", "syear")
names(interview04) <- c("hid", "pid", "int_nation", "syear")
names(interview05) <- c("hid", "pid", "int_nation", "syear")
names(interview06) <- c("hid", "pid", "int_nation", "syear")
names(interview07) <- c("hid", "pid", "int_nation", "syear")
names(interview08) <- c("hid", "pid", "int_nation", "syear")
names(interview09) <- c("hid", "pid", "int_nation", "syear")
names(interview10) <- c("hid", "pid", "int_nation", "syear")
names(interview11) <- c("hid", "pid", "int_nation", "syear")
names(interview12) <- c("hid", "pid", "int_nation", "syear")
names(interview13) <- c("hid", "pid", "int_nation", "syear")
names(interview14) <- c("hid", "pid", "int_nation", "syear")
names(interview15) <- c("hid", "pid", "int_nation", "syear")
names(interview16) <- c("hid", "pid", "int_nation", "syear")
names(interview17) <- c("hid", "pid", "int_nation", "syear")

nation3 <- rbind(interview85, interview86, interview87, interview88, interview89, interview90, interview91, interview92, interview93, 
                 interview94, interview95, interview96, interview97, interview98, interview99, interview00, interview01, interview02, interview03, 
                 interview04, interview05, interview06, interview07, interview08, interview09, interview10, interview11, interview12, interview13, 
                 interview14, interview15, interview16, interview17)

rm(interview85, interview86, interview87, interview88, interview89, interview90, interview91, interview92, interview93, interview94, interview95,
   interview96, interview97, interview98, interview99, interview00, interview01, interview02, interview03, interview04, interview05, interview06, interview07,
   interview08, interview09, interview10, interview11, interview12, interview13, interview14, interview15, interview16, interview17)

# Step 4: Previous Nationality (P)
# For 2002, use sp11702
prevnat02 <- fread("D:/Maria/SOEP/CSVs/csv/raw/sp.csv") # file name: sp
prevnat02 <- prevnat02 %>% select(hid, pid, sp11702, syear)
names(prevnat02) <- c("hid", "pid", "prev_nation", "syear") 

# For 2011, use bbp14202 
prevnat11 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bbp.csv") # file name: bbp
prevnat11 <- prevnat11 %>% select(hid, pid, bbp14202, syear)
names(prevnat11) <- c("hid", "pid", "prev_nation", "syear") 

# For 2016, use bgpm_p_46
prevnat16 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bgp.csv") # file name: bgp
prevnat16 <- prevnat16 %>% select(hid, pid, bgpm_p_46, syear)
names(prevnat16) <- c("hid", "pid", "prev_nation", "syear") 

# For 2017, use bhp_46_02_q55
prevnat17 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bhp.csv") # file name: bhp
prevnat17 <- prevnat17 %>% select(hid, pid, bhp_46_02_q55, syear)
names(prevnat17) <- c("hid", "pid", "prev_nation", "syear") 

nation4 <- rbind(prevnat02, prevnat11, prevnat16, prevnat17)

rm(prevnat02, prevnat11, prevnat16, prevnat17)

# Step 5: Child Nationality (KIND)
childnat84 <- fread("D:/Maria/SOEP/CSVs/csv/raw/akind.csv") # file name: akind
childnat84 <- childnat84 %>% select(hid, ak07a, syear)
names(childnat84) <- c("hid", "child_nat", "syear")

childnat88 <- fread("D:/Maria/SOEP/CSVs/csv/raw/ekind.csv") # file name: ekind
childnat88 <- childnat88 %>% select(hid, ek03a, syear)
names(childnat88) <- c("hid", "child_nat", "syear")

nation5 <- rbind(childnat84, childnat88)

rm(childnat84, childnat88)

# Step 6: Second Nationality 
# For 2000, use qp12002 
secnat00 <- fread("D:/Maria/SOEP/CSVs/csv/raw/qp.csv") # file name: qp
secnat00 <- secnat00 %>% select(hid, pid, qp12002, syear)
names(secnat00) <- c("hid", "pid", "count_sec_nation", "syear") 

# For 2001, use rp11602 
secnat01 <- fread("D:/Maria/SOEP/CSVs/csv/raw/rp.csv") # file name: rp
secnat01 <- secnat01 %>% select(hid, pid, rp11602, syear)
names(secnat01) <- c("hid", "pid", "count_sec_nation", "syear") 

# For 2002, use sp11503 
secnat02 <- fread("D:/Maria/SOEP/CSVs/csv/raw/sp.csv") # file name: sp
secnat02 <- secnat02 %>% select(hid, pid, sp11503, syear)
names(secnat02) <- c("hid", "pid", "count_sec_nation", "syear") 

# For 2003, use tp12302
secnat03 <- fread("D:/Maria/SOEP/CSVs/csv/raw/tp.csv") # file name: tp
secnat03 <- secnat03 %>% select(hid, pid, tp12302, syear)
names(secnat03) <- c("hid", "pid", "count_sec_nation", "syear") 

# For 2004, use up12702 
secnat04 <- fread("D:/Maria/SOEP/CSVs/csv/raw/up.csv") # file name: up
secnat04 <- secnat04 %>% select(hid, pid, up12702, syear)
names(secnat04) <- c("hid", "pid", "count_sec_nation", "syear") 

# For 2005, use vp13602 
secnat05 <- fread("D:/Maria/SOEP/CSVs/csv/raw/vp.csv") # file name: vp
secnat05 <- secnat05 %>% select(hid, pid, vp13602, syear)
names(secnat05) <- c("hid", "pid", "count_sec_nation", "syear") 

# For 2006, use wp12802 
secnat06 <- fread("D:/Maria/SOEP/CSVs/csv/raw/wp.csv") # file name: wp
secnat06 <- secnat06 %>% select(hid, pid, wp12802, syear)
names(secnat06) <- c("hid", "pid", "count_sec_nation", "syear") 

# For 2007, use xp14002 
secnat07 <- fread("D:/Maria/SOEP/CSVs/csv/raw/xp.csv") # file name: xp
secnat07 <- secnat07 %>% select(hid, pid, xp14002, syear)
names(secnat07) <- c("hid", "pid", "count_sec_nation", "syear") 

# For 2008, use yp13802 
secnat08 <- fread("D:/Maria/SOEP/CSVs/csv/raw/yp.csv") # file name: yp
secnat08 <- secnat08 %>% select(hid, pid, yp13802, syear)
names(secnat08) <- c("hid", "pid", "count_sec_nation", "syear") 

# For 2009, use zp13802 
secnat09 <- fread("D:/Maria/SOEP/CSVs/csv/raw/zp.csv") # file name: zp
secnat09 <- secnat09 %>% select(hid, pid, zp13802, syear)
names(secnat09) <- c("hid", "pid", "count_sec_nation", "syear") 

# For 2010, use bap13602  
secnat10 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bap.csv") # file name: bap
secnat10 <- secnat10 %>% select(hid, pid, bap13602, syear)
names(secnat10) <- c("hid", "pid", "count_sec_nation", "syear") 

# For 2011, use bbp14102 
secnat11 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bbp.csv") # file name: bbp
secnat11 <- secnat11 %>% select(hid, pid, bbp14102, syear)
names(secnat11) <- c("hid", "pid", "count_sec_nation", "syear") 

# For 2012, use bcp14002 
secnat12 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bcp.csv") # file name: bcp
secnat12 <- secnat12 %>% select(hid, pid, bcp14002, syear)
names(secnat12) <- c("hid", "pid", "count_sec_nation", "syear") 

# For 2013, use bdp14402
secnat13 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bdp.csv") # file name: bdp
secnat13 <- secnat13 %>% select(hid, pid, bdp14402, syear)
names(secnat13) <- c("hid", "pid", "count_sec_nation", "syear") 

# For 2014, use bep13002
secnat14 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bep.csv") # file name: bep
secnat14 <- secnat14 %>% select(hid, pid, bep13002, syear)
names(secnat14) <- c("hid", "pid", "count_sec_nation", "syear") 

# For 2015, use bfp15903
secnat15 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bfp.csv") # file name: bfp
secnat15 <- secnat15 %>% select(hid, pid, bfp15903, syear)
names(secnat15) <- c("hid", "pid", "count_sec_nation", "syear") 

# For 2016, use bgp15903
secnat16 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bgp.csv") # file name: bgp
secnat16 <- secnat16 %>% select(hid, pid, bgp15903, syear)
names(secnat16) <- c("hid", "pid", "count_sec_nation", "syear") 

# For 2017, use bhp_197_03
secnat17 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bhp.csv") # file name: bhp
secnat17 <- secnat17 %>% select(hid, pid, bhp_197_03, syear)
names(secnat17) <- c("hid", "pid", "count_sec_nation", "syear") 


nation6 <- rbind(secnat00, secnat01, secnat02, secnat03, secnat04, secnat05, secnat06, secnat07, secnat08, secnat09, secnat10, secnat11, secnat12, secnat13, 
                 secnat14, secnat15, secnat16, secnat17)

rm(secnat00, secnat01, secnat02, secnat03, secnat04, secnat05, secnat06, secnat07, secnat08, secnat09, secnat10, secnat11, secnat12, secnat13, secnat14,
   secnat15, secnat16, secnat17)


# Step 7: Country of Birth (PAUSL / P / PAGE17 / PBRUTTO)
# Country Born in from APAUSL
born.in.84 <- fread("D:/Maria/SOEP/CSVs/csv/raw/apausl.csv") # 1984: ap62a
born.in.84 <- born.in.84 %>% select(hid, pid, ap62a, syear)
names(born.in.84) <- c("hid", "pid", "country_birth", "syear")

born.in.85 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bpausl.csv") # 1985: bp98a
born.in.85 <- born.in.85 %>% select(hid, pid, bp98a, syear)
names(born.in.85) <- c("hid", "pid", "country_birth", "syear")

born.in.86 <- fread("D:/Maria/SOEP/CSVs/csv/raw/cpausl.csv") # 1986: cp98ab ("native country")
born.in.86 <- born.in.86 %>% select(hid, pid, cp98ab, syear)
names(born.in.86) <- c("hid", "pid", "country_birth", "syear")

born.in.87 <- fread("D:/Maria/SOEP/CSVs/csv/raw/dpausl.csv") # 1987: dp95a
born.in.87 <- born.in.87 %>% select(hid, pid, dp95a, syear)
names(born.in.87) <- c("hid", "pid", "country_birth", "syear")

born.in.88 <- fread("D:/Maria/SOEP/CSVs/csv/raw/epausl.csv") # 1988: ep88a
born.in.88 <- born.in.88 %>% select(hid, pid, ep88a, syear)
names(born.in.88) <- c("hid", "pid", "country_birth", "syear")

born.in.89 <- fread("D:/Maria/SOEP/CSVs/csv/raw/fpausl.csv") # 1989: fp105a
born.in.89 <- born.in.89 %>% select(hid, pid, fp105a, syear)
names(born.in.89) <- c("hid", "pid", "country_birth", "syear")

born.in.90 <- fread("D:/Maria/SOEP/CSVs/csv/raw/gpausl.csv") # 1990: gp105a
born.in.90 <- born.in.90 %>% select(hid, pid, gp105a, syear)
names(born.in.90) <- c("hid", "pid", "country_birth", "syear")

born.in.91 <- fread("D:/Maria/SOEP/CSVs/csv/raw/hpausl.csv") # 1991: hp105a
born.in.91 <- born.in.91 %>% select(hid, pid, hp105a, syear)
names(born.in.91) <- c("hid", "pid", "country_birth", "syear")

born.in.92 <- fread("D:/Maria/SOEP/CSVs/csv/raw/ipausl.csv") # 1992: ip105a
born.in.92 <- born.in.92 %>% select(hid, pid, ip105a, syear)
names(born.in.92) <- c("hid", "pid", "country_birth", "syear")

born.in.93 <- fread("D:/Maria/SOEP/CSVs/csv/raw/jpausl.csv") # 1993: jp105a
born.in.93 <- born.in.93 %>% select(hid, pid, jp105a, syear)
names(born.in.93) <- c("hid", "pid", "country_birth", "syear")


# Other Country of Birth from P
country.birth.00 <- fread("D:/Maria/SOEP/CSVs/csv/raw/qp.csv")
country.birth.00 <- country.birth.00 %>% select(hid, pid, qp12102, syear)
names(country.birth.00) <- c("hid", "pid", "country_birth", "syear")

country.birth.01 <- fread("D:/Maria/SOEP/CSVs/csv/raw/rp.csv")
country.birth.01 <- country.birth.01 %>% select(hid, pid, rp11702, syear)
names(country.birth.01) <- c("hid", "pid", "country_birth", "syear")

# Second nationality information from PBRUTTO
secnat_95 <- fread("D:/Maria/SOEP/CSVs/csv/raw/lpbrutto.csv")
secnat_95 <- secnat_95 %>% select(hid, pid, lpnation, syear)
names(secnat_95) <- c("hid", "pid", "country_birth", "syear")

secnat_16 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bgpbrutto.csv")
secnat_16 <- secnat_16 %>% select(hid, pid, bgpnat2, syear)
names(secnat_16) <- c("hid", "pid", "country_birth", "syear")

secnat_17 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bhpbrutto.csv")
secnat_17 <- secnat_17 %>% select(hid, pid, bhpnat2, syear)
names(secnat_17) <- c("hid", "pid", "country_birth", "syear")


nation7 <- rbind(born.in.84, born.in.85, born.in.86, born.in.87, born.in.88, born.in.89, born.in.90, born.in.91, born.in.92, born.in.93, 
                 country.birth.00, country.birth.01, secnat_95, secnat_16, secnat_17)

rm(born.in.84, born.in.85, born.in.86, born.in.87, born.in.88, born.in.89, born.in.90, born.in.91, born.in.92, born.in.93, country.birth.00, 
   country.birth.01, secnat_95, secnat_16, secnat_17)


# Reported parental nationality
# Parental Nationality from P (since 2016) P
parent16 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bgp.csv") # file name: bgp
parent16 <- parent16 %>% select(hid, pid, bgpr44802, syear)
names(parent16) <- c("hid", "pid", "parent_nat", "syear")

parent17 <- fread("D:/Maria/SOEP/CSVs/csv/raw/bhp.csv") # file name: bhp
parent17 <- parent17 %>% select(hid, pid, bhp_447_01_q57, syear)
names(parent17) <- c("hid", "pid", "parent_nat", "syear")

nation8 <- rbind(parent16, parent17)
rm(parent16, parent17)