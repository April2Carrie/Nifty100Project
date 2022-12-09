# install.packages("forecast")
require("zoo")
require("forecast")

args <- commandArgs(trailingOnly=TRUE)
dat <- read.csv(args[1])
origin<-read.zoo(dat)
n.train <- floor(0.8*length(dat[,1]))
n.test <- length(dat[,1])-n.train
# build model
train <- read.zoo(dat[1:n.train,])
test <- read.zoo(dat[(n.train+1):(n.train+n.test),])

m <- auto.arima(train)
name <- sub(".csv","",args[1])


pdf(paste(name,"_predict.pdf",sep=""))
plot(forecast(m,h=n.test),xaxt='n',xlab='time',ylab='price')
lines(test)
legend("topleft",legend=c("real","predict"),lty = c(1, 1), col = c("black", "#6699CC"), lwd = 2)
dev.off()

pdf(paste(name,"_check.pdf",sep=""))
checkresiduals(m)
dev.off()

pdf(paste(name,"_root.pdf",sep=""))
autoplot(m)
dev.off()

print(summary(m))
