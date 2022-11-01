#Lab 1 Part 1

library(modeest)
EPI_data <- read.csv('C:\\Users\\konkwa\\Desktop\\Data Analytics\\2010EPI_data.csv', header = TRUE, skip = 1)
attach(EPI_data)
head(EPI_data)
summary(EPI)

tf <- is.na(EPI)
E <- EPI[!tf]

stem(EPI)
hist(EPI)

hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw=1.))
rug(EPI)

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI)
qqline(EPI)

qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t
dsn")

qqline(x)

plot(ecdf(DALY), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(DALY)
qqline(DALY)

qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t
dsn")

qqline(x)

boxplot(EPI,DALY) 

#Exercise 2
EPILand<-EPI[!Landlock]
Eland <- EPILand[!is.na(EPILand)]
hist(Eland)
hist(Eland, seq(30., 95., 1.0), prob=TRUE)

plot(ecdf(EPILand[EPI]), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPILand[EPI])
qqline(EPILand[EPI])

qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t
dsn")

qqline(x)

EPI_South_Asia <- EPI_regions["South Asia"]
EPI_South_Asia
