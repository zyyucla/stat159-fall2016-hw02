dat<-read.csv("../data/Advertising.csv",row.names=1)

#Inspecting data frame
head(dat)
str(dat)
summary(dat)

#Output result to the file
sink("../eda-script.txt")
summary(dat)
sink()


png("histogram-tv.png")
hist(dat$TV)
#dev.off()

png("histogram-sales.png")
hist(dat$Sales)
dev.off()




 
