dat<-read.csv("../data/Advertising.csv",row.names=1)

#Inspecting data frame
head(dat)
str(dat)
summary(dat)

#Output result to the file
sink("../data/eda-output.txt")
summary(dat)
sink()


png("histogram-tv.png")
hist(dat$TV,main="Histogram of TV", xlab="TV")
#dev.off()

png("histogram-sales.png")
hist(dat$Sales,main="Histogram of Sales", xlab="Sales")
dev.off()




 
