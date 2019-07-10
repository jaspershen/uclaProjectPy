setwd("E:/project/UCLA")
library(haven)
sample.info <- read_spss(file = "cedars and uccs plasma shipped 7 2 19.sav")

temp1 <- sample.info[,c(2,3,4)]
temp2 <- sample.info[,c(5,6,7)]
temp3 <- sample.info[,c(8,9,10)]


head(temp1)

temp1[is.na(temp1)] <- 0
temp2[is.na(temp2)] <- 0
temp3[is.na(temp3)] <- 0
which(apply(temp1, 1, function(x){
(all(x[c(1,2)] == 1)) |
  (all(x[c(1,2)] == 0) & x[3] == 1) |
    (any(x[c(1,2)] != 0) & x[3] == 0)
}))


which(apply(temp2, 1, function(x){
  (all(x[c(1,2)] == 1)) |
    (all(x[c(1,2)] == 0) & x[3] == 1) |
    (any(x[c(1,2)] != 0) & x[3] == 0)
}))


which(apply(temp3, 1, function(x){
  (all(x[c(1,2)] == 1)) |
    (all(x[c(1,2)] == 0) & x[3] == 1) |
    (any(x[c(1,2)] != 0) & x[3] == 0)
}))

any(temp1 > 1)
any(temp2 > 1)

