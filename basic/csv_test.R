#csv는 기본 패키지로 사용가능
#csv를 읽기
mdf <- read.csv("csv_exam.csv")
mdf
mdf[2,]
#dataframe에서 조건에 만족하는 데이터를 조회
m <- matrix(1:20,ncol=4)
m
d <- data.frame(m)
d
myresult <- d[d$X3>=13,]
myresult
#조건에 만족하는 데이터를 result.csv파일로 저장
write.csv(myresult,file = "result.csv")

mdf1 <- read.csv("csv_exam.csv")
myres <- mdf1[mdf1$science>=80,]

myres
a <- matrix(1:length(myres[,length(myres)]))
for (i in a ){
  #total=c(sum(myres[1,-c(1,2)]),sum(myres[2,-c(1,2)]),sum(myres[3,-c(1,2)]))
  total <- cbind(sum(myres[i,-c(1,2)]))
}
total

