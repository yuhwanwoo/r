library("stringr")
library("mongolite")

load(file="crawl_data.RData")
url1=final_data[,3]
url1
#웹페이지 데이터 가져오기
contentdata <- readLines(url1[1],encoding = "UTF-8")
tail(contentdata)
class(contentdata)

#원하는 부분만 가지고 오기
start=str_detect(contentdata,"post_content") #매칭 되는지 안되는지
start=which(str_detect(contentdata,"post_content"))
end=which(str_detect(contentdata,"post_ccls"))
start
end

content_filter_data <- contentdata[start:end]
content_filter_data

#데이터 정제하기
#1. 벡터로 리턴하므로 한 개로 합치기
content_filter_data <- paste(content_filter_data,collapse = "")
content_filter_data

#2. 불필요한 기호나 태그 없애기
#태그 없애기
content_filter_data <- gsub("<.*?>","",content_filter_data)
content <- gsub("\t|&nbsp;","",content_filter_data)
content
