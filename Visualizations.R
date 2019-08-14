### Visualizations ###

# Preparation: calculate the average saving rate for each country (by IOC code)
saving_IOC <- finalsample %>% select(IOC,syear,savingrate) %>% group_by(IOC) %>% summarise(mean_saving = mean(savingrate))

# 1: Thrift
look.thrift <- left_join(thriftfinal, saving_IOC)

look.thrift$number <- c(1)
count <- look.thrift %>% select(IOC, syear, number) %>% group_by(IOC) %>% summarise(total = sum(number))
look.thrift <- left_join(look.thrift, count)

look.thrift <- look.thrift %>% filter(total > 15)

a <- ggplot(look.thrift, aes(x = thrift_prop, y = mean_saving)) + ggtitle("(a) Thrift") + xlab("Thrift attitudes in home country") + ylab("Saving rate of 2nd generation immigrants") + geom_point(size=2,colour="grey") + geom_smooth(method=lm) + theme_bw() + geom_text(aes(label=IOC),hjust=-0.4, vjust=0.3) + theme(axis.text = element_text(size = 12), axis.title = element_text(size=14))
a

# 2: Wealth
look.wealth <- left_join(wealthfinal, saving_IOC)

look.wealth$number <- c(1)
count <- look.wealth %>% select(IOC, syear, number) %>% group_by(IOC) %>% summarise(total = sum(number))
look.wealth <- left_join(look.wealth, count)

look.wealth <- look.wealth %>% filter(total > 15)

b <- ggplot(look.wealth, aes(x = rescaled_wealth, y = mean_saving)) + ggtitle("(b) Wealth accumulation") + xlab("Wealth accumulation attitudes in home country") + ylab("Saving rate of 2nd generation immigrants") + geom_point(size=2,colour="grey") + geom_smooth(method=lm) + theme_bw() + geom_text(aes(label=IOC),hjust=-0.4, vjust=0.3) + theme(axis.text = element_text(size = 12), axis.title = element_text(size=14))
b

# 3: Indulgence SVS
look.indulgSVS <- left_join(indulgenceSVSfinal, saving_IOC)

look.indulgSVS$number <- c(1)
count <- look.indulgSVS %>% select(IOC, syear, number) %>% group_by(IOC) %>% summarise(total = sum(number))
look.indulgSVS <- left_join(look.indulgSVS, count)

look.indulgSVS <- look.indulgSVS %>% filter(total > 15)

c <- ggplot(look.indulgSVS, aes(x = rescaled_indulg, y = mean_saving)) + ggtitle("(c) Indulgence (SVS)") + xlab("Indulgence attitudes (SVS) in home country") + ylab("Saving rate of 2nd generation immigrants") + geom_point(size=2,colour="grey") + geom_smooth(method=lm) + theme_bw() + geom_text(aes(label=IOC),hjust=-0.4, vjust=0.3) + theme(axis.text = element_text(size = 12), axis.title = element_text(size=14))
c

# 4: Indulgence Hof
look.indulgHof <- left_join(indulgenceHoffinal, saving_IOC)

look.indulgHof$number <- c(1)
count <- look.indulgHof %>% select(IOC, syear, number) %>% group_by(IOC) %>% summarise(total = sum(number))
look.indulgHof <- left_join(look.indulgHof, count)

look.indulgHof <- look.indulgHof %>% filter(total > 15)

d <- ggplot(look.indulgHof, aes(x = indulg, y = mean_saving)) + ggtitle("(d) Indulgence (Hofstede)") + xlab("Indulgence attitudes (Hofstede) in home country") + ylab("Saving rate of 2nd generation immigrants") + geom_point(size=2,colour="grey") + geom_smooth(method=lm) + theme_bw() + geom_text(aes(label=IOC),hjust=-0.4, vjust=0.3) + theme(axis.text = element_text(size = 12), axis.title = element_text(size=14))
d

# 5: Long-Term Orientation
look.longterm <- left_join(longtermHoffinal, saving_IOC)

look.longterm$number <- c(1)
count <- look.longterm %>% select(IOC, syear, number) %>% group_by(IOC) %>% summarise(total = sum(number))
look.longterm <- left_join(look.longterm, count)

look.longterm <- look.longterm %>% filter(total > 15)

e <- ggplot(look.longterm, aes(x = long_term, y = mean_saving)) + ggtitle("(e) Long-term Orientation") + xlab("Long-term orientation attitudes in home country") + ylab("Saving rate of 2nd generation immigrants") + geom_point(size=2,colour="grey") + geom_smooth(method=lm) + theme_bw() + geom_text(aes(label=IOC),hjust=-0.4, vjust=0.3) + theme(axis.text = element_text(size = 12), axis.title = element_text(size=14))
e

# 6: Uncertainty Avoidance
look.uncavoid <- left_join(uncavoidHoffinal, saving_IOC)

look.uncavoid$number <- c(1)
count <- look.uncavoid %>% select(IOC, syear, number) %>% group_by(IOC) %>% summarise(total = sum(number))
look.uncavoid <- left_join(look.uncavoid, count)

look.uncavoid <- look.uncavoid %>% filter(total > 15)

f <- ggplot(look.uncavoid, aes(x = unc_avoid, y = mean_saving)) + ggtitle("(f) Uncertainty Avoidance") + xlab("Uncertainty avoidance attitudes in home country") + ylab("Saving rate of 2nd generation immigrants") + geom_point(size=2,colour="grey") + geom_smooth(method=lm) + theme_bw() + geom_text(aes(label=IOC),hjust=-0.4, vjust=0.3) + theme(axis.text = element_text(size = 12), axis.title = element_text(size=14))
f

# 7: Individualism and Collectivism
look.collect <- left_join(collectfinal, saving_IOC)

look.collect$number <- c(1)
count <- look.collect %>% select(IOC, syear, number) %>% group_by(IOC) %>% summarise(total = sum(number))
look.collect <- left_join(look.collect, count)

look.collect <- look.collect %>% filter(total > 15)

a2 <- ggplot(look.collect, aes(x = indiv_coll, y = mean_saving)) + ggtitle("(a) Individualism") + xlab("Individualism attitudes in home country") + ylab("Saving rate of 2nd generation immigrants") + geom_point(size=2,colour="grey") + geom_smooth(method=lm) + theme_bw() + geom_text(aes(label=IOC),hjust=-0.4, vjust=0.3) + theme(axis.text = element_text(size = 12), axis.title = element_text(size=14))
a2

# 8: Belonging
look.belong <- left_join(belongSVSfinal, saving_IOC)

look.belong$number <- c(1)
count <- look.belong %>% select(IOC, syear, number) %>% group_by(IOC) %>% summarise(total = sum(number))
look.belong <- left_join(look.belong, count)

look.belong <- look.belong %>% filter(total > 15)

b2 <- ggplot(look.belong, aes(x = rescaled_belong, y = mean_saving)) + ggtitle("(b) Belonging") + xlab("Belonging attitudes in home country") + ylab("Saving rate of 2nd generation immigrants") + geom_point(size=2,colour="grey") + geom_smooth(method=lm) + theme_bw() + geom_text(aes(label=IOC),hjust=-0.4, vjust=0.3) + theme(axis.text = element_text(size = 12), axis.title = element_text(size=14))
b2

# 9: Trust
look.trust <- left_join(trustfinal, saving_IOC)

look.trust$number <- c(1)
count <- look.trust %>% select(IOC, syear, number) %>% group_by(IOC) %>% summarise(total = sum(number))
look.trust <- left_join(look.trust, count)

look.trust <- look.trust %>% filter(total > 15)

c2 <- ggplot(look.trust, aes(x = trust_prop, y = mean_saving)) + ggtitle("(c) Trust") + xlab("Trust attitudes in home country") + ylab("Saving rate of 2nd generation immigrants") + geom_point(size=2,colour="grey") + geom_smooth(method=lm) + theme_bw() + geom_text(aes(label=IOC),hjust=-0.4, vjust=0.3) + theme(axis.text = element_text(size = 12), axis.title = element_text(size=14))
c2


# Combine together

ggarrange(a,b,c,d,e,f,ncol=2,nrow=3)

ggarrange(a2,b2,c2,ncol=3,nrow=1)

rm(look.thrift, look.wealth, look.indulg.SVS, look.indulg.Hof, look.longterm, look.uncavoid, look.collect, look.belong, look.trust)


