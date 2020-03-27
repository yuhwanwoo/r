#ggplot2패키지에서 제공되는 mpg데이터를 분석
####step1. mpg를 dataframe으로 변경####

dfmpg=as.data.frame(mpg)
dfmpg
####step2. mpg의 정보를 출력####
# 행 개수, 열의 개수, 위에서 10개, 끝에서 10개 출력
head(mpg,n=5)
tail(mpg,5)

####step3. mpg의 컬럼명을 변경####
#cty => city, hwy => highway
mpg1 <- rename(mpg,city=cty)
mpg1
####step4. 파생변수 생성하기####
# total컬럼을 추가 => cty와 hwy의 합
# avg컬럼을 추가 => cty와 hwy의 평균

mpg1$total <- as.numeric(mpg1$city+mpg1$hwy)
mpg1
mpg1$avg <- as.numeric(mpg1$total/2)
mpg1
####step5. 생성된 total을 가지고 요약정보 확인####
summary(mpg1)

####step6. info컬럼추가####
#total값을 이용해서 평가 - 30 이상이면 pass, fail
mpg1[,"info"] <- ifelse(test = mpg1$total>=30,yes = "pass",no="fail")
mpg1
####step7. grade컬럼 추가
#total값을 이용해서 평가 - 40 이상이면 A, 35이상이면 B, 30이상 C 나머지 D
mpg1[,"grade"] <- ifelse(test = mpg1$total>=40,yes ="A",no=ifelse(test=mpg1$total>=35,yes = "B",no=ifelse(test = mpg1$total>=30,yes = "C",no="D")))
mpg1

