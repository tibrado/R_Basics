# 3/6/2019
age<-c(35,26,30,40,35,32,40,21,32,25)

weight.1<-c(70,74,75,66,74,66,75,80,90,85)

height<-c(180,190,180,160,160,165,180,165,170,210)

gender<-c("M","F","M","F","F","F","M","F","F","M")

stratum<-c("3","3","5","4","4","4","5","4","4","4")

# to put data in a table 
my.data <- data.frame(age, weight.1, height, gender, stratum)

head(my.data)
tail(my.data)

# How to create a vector 
noel<- c(1,5,7,3,4,5,3,2,3,4,1,5,7,3,4,5,3,2,3,4,1,5,7,3,4,5,3,2,3,4)
x1 <- c(1:50)
x1
str(my.data)
str(my.data$gender)
install.packages(pkgs = c("dplyr", "ggplot2", "ggformula","mosaic", "supernova", "lsr","Lock5Data", "Lock5withR",
                          "okcupiddata", "dslabs","fivethirtyeight"))


library("dplyr")
tally(my.data)
arrange(my.data)
my.data$test <- c(1:10)
str(my.data)
mean(my.data$age)
attach(my.data)
mean(age)
detach(my.data)
mean(age)
my.data$gender <- factor(my.data$gender, levels = c("M", "F"), labels = c(1,2))
my.data$gender
