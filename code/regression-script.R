#Read Data 
dat<-read.csv("../data/Advertising.csv",row.names=1)

reg<-lm(Sales~TV, data=dat)
reg

#Save the reg summary
regsum<-summary(reg)
regsum
save(reg,file="regression.RData")

#scatterplot with regression line
png("../images/scatterplot.png")
plot(dat$TV,dat$Sales,xlab="TV", ylab="Sales",pch = 19,col="#8e8f94")
abline(reg,col="#bd0300",lwd=2)

pdf("../images/scatterplot.pdf")
plot(dat$TV,dat$Sales,xlab="TV", ylab="Sales",pch = 19,col="#8e8f94")
abline(reg,col="#bd0300",lwd=2)

dev.off()
