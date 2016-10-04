dat<-read.csv("../data/Advertising.csv",row.names=1)

#Inspecting data frame
head(dat)
str(dat)
summary(dat)

#Output result to the file
sink("../data/eda-output.txt")
summary(dat)
sink()

pdf("../images/histogram-tv.pdf")
hist(dat$TV,main="Histogram of TV", xlab="TV")
png("../images/histogram-tv.png")
hist(dat$TV,main="Histogram of TV", xlab="TV")
#dev.off()

pdf("../images/histogram-sales.pdf")
hist(dat$Sales,main="Histogram of TV", xlab="Sales")
png("../images/histogram-sales.png")
hist(dat$Sales,main="Histogram of Sales", xlab="Sales")
dev.off()




 
