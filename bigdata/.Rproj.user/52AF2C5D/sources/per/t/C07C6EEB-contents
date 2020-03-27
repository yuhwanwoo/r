#####모두의 광장의 1페이지 : 10페이지의 모든 게시글크롤링#####
#1.모든 페이지의 title,hit,url,content 추출하기
#2. crawl_result.csv,crawl_result.RData저장
# mongodb저장(300개 저장)
#4. for문, if문을 활용

library("stringr")
library("mongolite")
#
for (i in 0:2) {
r=as.character(i)
class(r)
url <- "https://www.clien.net/service/group/community?&od=T31&po="
url_val <- paste0(url,r)
print(url_val)

url_data <- readLines(url_val,encoding = "UTF-8")
url_data
class(url_data)
  
filter_data <- url_data[str_detect(url_data,"subject_fixed")]
filter_data
 
title1 <- str_extract(filter_data,"(?<=\">).*(?=</span>)")
class(title1)
as.matrix(title1)


}
