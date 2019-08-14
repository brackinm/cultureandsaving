# Counting countries

# First, check number of observations (rows in data frame) and households (hid)
length(levels(as.factor(finalsample$hid)))

# Total number of nationalities (for later check)
length(levels(as.factor(finalsample$nationality)))

# EUROPE 
Austria <- finalsample %>% filter(nationality==10) 
Belarus <- finalsample %>% filter(nationality==132) 
Belgium <- finalsample %>% filter(nationality==117) 
Bosnia.Herzeg <- finalsample %>% filter(nationality==120) 
Bulgaria <- finalsample %>% filter(nationality==29)
Croatia <- finalsample %>% filter(nationality==119) 
Czech.Rep <- finalsample %>% filter(nationality==31) 
Denmark <- finalsample %>% filter(nationality==13) 
Estonia <- finalsample %>% filter(nationality==101) 
Ex.Yugoslavia <- finalsample %>% filter(nationality==3) 
Finland <- finalsample %>% filter(nationality==17) 
France <- finalsample %>% filter(nationality==11) 
Greece <- finalsample %>% filter(nationality==4) 
Hungary <- finalsample %>% filter(nationality==26) 
Italy <- finalsample %>% filter(nationality==5) 
Kosovo <- finalsample %>% filter(nationality==140) 
Latvia <- finalsample %>% filter(nationality==103) 
Lithuania <- finalsample %>% filter(nationality==146) 
Luxembourg <- finalsample %>% filter(nationality==116) 
Macedonia <- finalsample %>% filter(nationality==121) 
Montenegro <- finalsample %>% filter(nationality==168) 
Netherlands <- finalsample %>% filter(nationality==118) 
Norway <- finalsample %>% filter(nationality==16) 
Poland <- finalsample %>% filter(nationality==22) 
Portugal <- finalsample %>% filter(nationality==28) 
Romania <- finalsample %>% filter(nationality==21) 
Serbia <- finalsample %>% filter(nationality==165) 
Slovakia <- finalsample %>% filter(nationality==123) 
Slovenia <- finalsample %>% filter(nationality==122)
Spain <- finalsample %>% filter(nationality==6)
Sweden <- finalsample %>% filter(nationality==15) 
Switzerland <- finalsample %>% filter(nationality==19) 
UK <- finalsample %>% filter(nationality==14) 
Ukraine <- finalsample %>% filter(nationality==78) 

rm(Austria, Belarus, Belgium, Bosnia.Herzeg, Bulgaria, Croatia, Czech.Rep, Denmark, Estonia, Ex.Yugoslavia, Finland, France, Greece, Hungary, Italy, Kosovo, 
   Latvia, Lithuania, Luxembourg, Macedonia, Montenegro, Netherlands, Norway, Poland, Portugal, Romania, Serbia, Slovakia, Slovenia, Spain, Sweden, 
   Switzerland, UK, Ukraine)

# ASIA
Bangladesh <- finalsample %>% filter(nationality==50) 
India <- finalsample %>% filter(nationality==42) 
Indonesia <- finalsample %>% filter(nationality==25) 
Iran <- finalsample %>% filter(nationality==24) 
Jordan <- finalsample %>% filter(nationality==90) 
Kazakhstan <- finalsample %>% filter(nationality==74) 
Korea <- finalsample %>% filter(nationality==23) 
Kyrgyzstan <- finalsample %>% filter(nationality==77) 
Lebanon <- finalsample %>% filter(nationality==76) 
Pakistan <- finalsample %>% filter(nationality==85) 
Philippines <- finalsample %>% filter(nationality==38) 
Russia <- finalsample %>% filter(nationality==32) 
Syria <- finalsample %>% filter(nationality==30) 
Tadzhikistan <- finalsample %>% filter(nationality==82) 
Turkey <- finalsample %>% filter(nationality==2) 
Vietnam <- finalsample %>% filter(nationality==83) 

rm(Bangladesh, India, Indonesia, Iran, Jordan, Kazakhstan, Korea, Kyrgyzstan, Lebanon, Pakistan, Philippines, Russia, Syria, Tadzhikistan, Turkey, Vietnam)

# AMERICAS
Bolivia <- finalsample %>% filter(nationality==27) 
Brazil <- finalsample %>% filter(nationality==61) 
Canada <- finalsample %>% filter(nationality==55) 
Chile <- finalsample %>% filter(nationality==20) 
Costa.Rica <- finalsample %>% filter(nationality==92) 
Cuba <- finalsample %>% filter(nationality==59) 
Ecuador <- finalsample %>% filter(nationality==96) 
Guatemala <- finalsample %>% filter(nationality==157) 
Paraguay <- finalsample %>% filter(nationality==124) 
Peru <- finalsample %>% filter(nationality==64) 
USA <- finalsample %>% filter(nationality==18) 

rm(Bolivia, Brazil, Canada, Chile, Costa.Rica, Cuba, Ecuador, Guatemala, Paraguay, Peru, USA)

# AFRICA 
Algeria <- finalsample %>% filter(nationality==79) 
Cape.Verde <- finalsample %>% filter(nationality==36) 
Ghana <- finalsample %>% filter(nationality==49) 
Morocco <- finalsample %>% filter(nationality==67) 
Namibia <- finalsample %>% filter(nationality==105) 
Nigeria <- finalsample %>% filter(nationality==54) 
Togo <- finalsample %>% filter(nationality==144) 
Tunisia <- finalsample %>% filter(nationality==52) 

rm(Algeria, Cape.Verde, Ghana, Morocco, Namibia, Nigeria, Togo, Tunisia)

# What is missing?
Other.Countries <- finalsample %>% select(pid, syear, nationality) %>% filter(nationality!=10 & nationality!=132 & nationality!=117 & nationality!=120 & 
                                           nationality!=119 & nationality!=31 & nationality!=13 & nationality!=101 & nationality!=3 & nationality!=17 & 
                                           nationality!=11 & nationality!=4 & nationality!=26 & nationality!=5 & nationality!=140 & nationality!=103 & 
                                           nationality!=146 & nationality!=116 & nationality!=121 & nationality!=168 & nationality!=118 & nationality!=16 &
                                           nationality!=22 & nationality!=28 & nationality!=21 & nationality!=165 & nationality!=123 & nationality!=122 & 
                                           nationality!=6 & nationality!=15 & nationality!=19 & nationality!=14 & nationality!=78 & nationality!=50 & 
                                           nationality!=42 & nationality!=25 & nationality!=24 & nationality!=90 & nationality!=74 & nationality!=23 & 
                                           nationality!=77 & nationality!=76 & nationality!=85 & nationality!=38 & nationality!=32 & nationality!=30 & 
                                           nationality!=82 & nationality!=2 & nationality!=83 & nationality!=27 & nationality!=61 & nationality!=55 & 
                                           nationality!=20 & nationality!=92 & nationality!=59 & nationality!=96 & nationality!=157 & nationality!=124 & 
                                           nationality!=64 & nationality!=18 & nationality!=79 & nationality!=36 & nationality!=49 & nationality!=67 & 
                                           nationality!=105 & nationality!=54 & nationality!=144 & nationality!=52 & nationality != 29) 

# 80: Mozambique
Mozambique <- finalsample %>% filter(nationality==80) 

# 12: Benelux (Belgium, Netherlands, and Luxembourg)
Benelux <- finalsample %>% filter(nationality==12)

rm(Mozambique, Benelux, Other.Countries)


# Add in three-letter country codes

# Convert nationality numbers into three letter country codes

countries <- list("AUT"=10, "BLR"=132, "BEL"=117, "BIH"=120, "BUL"=29, "CRO"=119, "CZE"=31, "DEN"=13, "EST"=101, "FIN"=17, "FRA"=11, "GRE"=4, "HUN"=26,
                  "ITA"=5, "KOS"=140, "LAT"=103, "LTU"=146, "LUX"=116, "MKD"=121, "MNE"=168, "NED"=118, "NOR"=16, "POL"=22, "POR"=28, "ROU"=21, "SRB"=165,
                  "SVK"=123, "SLO"=122, "ESP"=6, "SWE"=15, "SUI"=19, "GBR"=14, "UKR"=78, "BAN"=50, "IND"=42, "INA"=25, "IRI"=24, "JOR"=90, "KAZ"=74,
                  "KOR"=23, "KGZ"=77, "LBN"=76, "PAK"=85, "PHI"=38, "RUS"=32, "SYR"=30, "TJK"=82, "TUR"=2, "VIE"=83, "ISR"=39, "PLE"=152, "TAN"=44,
                  "CHN"=68, "BOL"=27, "BRA"=61, "CAN"=55, "CHI"=20, "CRC"=92, "CUB"=59, "ECU"=96, "GUA"=157, "PAR"=124, "PER"=64, "USA"=18, "MEX"=34,
                  "COL"=48, "ALG"=79, "CPV"=36, "GHA"=49, "MAR"=67, "NAM"=105, "NGR"=54, "TOG"=144, "TUN"=52, "MOZ"=80, "RSA"=86, "YUG"=3, "BNL"=12)

IOC <- vector()
timer = 0

for(nat in finalsample$nationality){
  timer = timer + 1
  alpha_poop <- names(which(countries == nat))
  if (length(alpha_poop) == 0) {alpha_poop = NA} 
  IOC[timer] <- alpha_poop
}

finalsample$IOC <- IOC

rm(alpha_poop, IOC, nat, timer)

