#행렬
matrix(1:15)
? matrix
mymat1 <- matrix(1:15,ncol = 3) #3열로 작성
mymat1
# 1부터 15까지의 값을 3개의 열로 표현,row방향으로 값을 추가
mymat1 <- matrix(1:15,ncol = 3,byrow = T)
mymat1
#matrix에서 원하는 값을 추출하기
mymat1[2,2] #행,열열
mymat1[3,3]
mymat1[1,c(1:3)]
mymat1[1,] #1행의 모든열열
mymat1[,1] #1열의 모든값값
#1행과 3행을 뺀 데이터
mymat1[-c(1,3),]
#미니실습1 - 2행부터 4행까지 출력(단,2번,3번컬럼만)
mymat1[2:4,c(2,3)]
#cbind는 컬럼을 추가하는 함수 - 값이 부족하면 맨 앞의 같이 채워진다.
addmymat1 <- cbind(mymat1,c(1,11,111,1111))
addmymat1
addmymat2 <- rbind(mymat1,c(1,11,111,1111))
addmymat2
colnames(mymat1) <- c("a","b","c")
mymat1
rownames(mymat1) <- c("r1","r2","r3","r4","r5")
exammat
exammat <- matrix(c(80,80,90,99,90,99,78,89,70,78,82,78,100,72,78,90),ncol = 4)
exammat
colnames(exammat) <- c("국어","영어","과학","수학")
rownames(exammat) <- c("kim","lee","hong","jang")
exammat
avname=matrix(c(mean(exammat[1,c(1:4)]),mean(exammat[2,c(1:4)]),mean(exammat[3,c(1:4)]),mean(exammat[4,c(1:4)])),ncol=4)
avname
avsubj=matrix(c(mean(exammat[c(1:4),1]),mean(exammat[c(1:4),2]),mean(exammat[c(1:4),3]),mean(exammat[c(1:4),4])),ncol=4)                           
avsubj              

myjumsuMat <- matrix(c(80,90,70,100,80,99,78,72,90,78,82,78,99,89,78,90),nrow = 4,byrow = T)
myjumsuMat

