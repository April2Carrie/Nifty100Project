# install.packages("forecast")
require("zoo")
require("forecast")

args = commandArgs(trailingOnly=TRUE)
dat <- read.csv(args[1])

# build model
dat <- read.zoo(dat)
m <- auto.arima(dat)

pdf(paste(args[1],".pdf",sep=""))
plot(forecast(m,h=100))
dev.off()

print(summary(m))
