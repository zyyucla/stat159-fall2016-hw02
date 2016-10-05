#Read Data 
dat<-read.csv("../data/Advertising.csv",row.names=1)

reg<-lm(Sales~TV, data=dat)
reg
names(reg)

#Save the reg summary
regsum<-summary(reg)
regsum
names(regsum)
save(reg,file="regression.RData")

#scatterplot with regression line
#png("../images/scatterplot-tv-sales.png")
#plot(dat$TV,dat$Sales,main="Linear regression of TV ads on Sales",xlab="TV", ylab="Sales",pch = 19,col="#8e8f94")
#abline(reg,col="#bd0300",lwd=2)

#pdf("../images/scatterplot-tv-sales.pdf")
#plot(dat$TV,dat$Sales,main="Linear regression of TV ads on Sales",xlab="TV", ylab="Sales",pch = 19,col="#8e8f94")
#abline(reg,col="#bd0300",lwd=2)

dev.off()
