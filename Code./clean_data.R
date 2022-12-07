rm(list=ls())

args = (commandArgs(trailingOnly=TRUE))
if (length(args)!=1)
{
 cat('usage: Rscript hw4.R <data>', file=stderr())
 stop()
}
dataDir = args[1]

library(tidyverse)

data=read.csv(dataDir)
data1=data[,1:2]
data2=separate(data=data1, col=date, into=c("date1","time"), sep=" ")
data3=data2[data2$time=="15:29:00+05:30",]
data4=data3[,-2]
print(head(data4))
write.table(data4, paste0('1',dataDir),sep=",",quote=FALSE, row.names=FALSE)

