setwd("C:\\Users\\it24100008\\Desktop\\IT24100008PS_Lab08")
getwd()

data <-read.table("Exercise - LaptopsWeights.txt" ,header = TRUE)
fix(data)
attach(data)

popmn  <- mean(Weight.kg.)
popmn
popvar <- var (Weight.kg.)
popvar

samples <- c()
n <- c()

for(i in 1:25){
  s <- sample(Weight.kg.,6,replace = TRUE)
  samples <- cbind(samples,s)
  n <- c(n , paste('s' , i))
}

colnames(samples) = n

s.means <- apply(samples ,2, mean)
s.means
s.vars <- apply(samples , 2 , var)
s.vars