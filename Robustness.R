# Robustness Checks
# This file creates the modified data frames that will be used to re-run the statistical model.

# 1: drop smallest countries (<10 observations)
smallcountries <- c("BAN", "BOL", "BRA", "JOR", "MOZ", "CUB", "NGR", "KGZ", "ECU", "LIB", "PAR", "PAK", "SYR", "FIN", "KOS", "LUX", "MNE", "NOR")

thrift.large <- thriftfinal %>% filter(!IOC %in% smallcountries)
wealth.large <- wealthfinal %>% filter(!IOC %in% smallcountries)

# 2: drop largest country (Turkey)
thrift.norm <- thriftfinal %>% filter(IOC != "TUR")
wealth.norm <- wealthfinal %>% filter(IOC != "TUR")

# 3: European countries only
europe <- c("AUT", "BEL", "BNL", "BIH", "BUL", "CRO", "CZE", "DEN", "EST", "YUG", "FIN", "FRA", "GRE", "HUN", "ITA", "KOS", "LUX", "MKD", "MNE", "NED", 
            "NOR", "POL", "POR", "ROU", "SRB", "SVK", "SLO", "ESP", "SWE", "SUI", "GBR", "UKR")

thrift.europe <- thriftfinal %>% filter(IOC %in% europe)
wealth.europe <- wealthfinal %>% filter(IOC %in% europe)

# 4: drop highest (top 5%) cultural proxy
top_5_thrift <- quantile(thriftfinal$thrift_prop, prob = c(0.95), na.rm=TRUE)
thrift.high <- thriftfinal %>% filter(thrift_prop < top_5_thrift)
top_5_wealth <- quantile(wealthfinal$rescaled_wealth, prob = c(0.95), na.rm=TRUE)
wealth.high <- wealthfinal %>% filter(rescaled_wealth < top_5_wealth)

# 5: drop.lowest (bottom 5%) cultural proxy
bot_5_thrift <- quantile(thriftfinal$thrift_prop, prob = c(0.05), na.rm=TRUE)
thrift.low <- thriftfinal %>% filter(thrift_prop > bot_5_thrift)
bot_5_wealth <- quantile(wealthfinal$rescaled_wealth, prob = c(0.05), na.rm=TRUE)
wealth.low <- wealthfinal %>% filter(rescaled_wealth > bot_5_wealth)

# 6: 30-60 years age range
thrift.age <- thriftfinal %>% filter(age<61 & age>29)
wealth.age <- wealthfinal %>% filter(age<61 & age>29)

# 7: no "composite" countries (YUG, BNL)
composite <- c("YUG", "BNL")
thrift.single <- thriftfinal %>% filter(!IOC %in% composite)
wealth.single <- wealthfinal %>% filter(!IOC %in% composite)
