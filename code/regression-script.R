#Read Data 
dat<-read.csv("../data/Advertising.csv",row.names=1)

reg<-lm(Sales~TV, data=dat)
reg

#Save the reg summary
regsum<-summary(reg)
regsum
save(reg,file="regression.RData")

#scatterplot with regression line
png("scatterplot.png")
plot(dat$TV,dat$Sales,pch = 19,col="#8e8f94")
abline(reg,col="#5679DF",xlab="TV", ylab="Sales",lwd=2)

dev.off()
