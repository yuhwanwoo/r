test1 <- data.frame(id=c(1,2,3,4,5),midjum=c(77,56,99,100,99))
test2 <- data.frame(id=c(1,2,3,4,5),final_jumsu=c(77,56,99,100,99))
test1
test2
final_data <- left_join(test1,test2,by="id")
final_data

namedata <- data.frame(class=c(1,2,3,4,5),teacher=c("kim","lee","park","jang","hong"),stringsAsFactors = F)
str(namedata)
exam
exam_new <- left_join(exam,namedata,by="class")
exam_new

groupA <- data.frame(id=c(1,2,3,4,5),mid_jumsu=c(77,56,99,100,99))
groupB <- data.frame(id=c(6,7,8,9,10),mid_jumsu=c(77,56,99,100,99))
group_total <- bind_rows(groupA,groupB)
group_total

mpg2 <- mpg
mpg2

mpg2 %>% group_by(class) %>% summarise(avg_cty=mean(cty))
mpg2 %>% group_by(class) %>% summarise(avg_cty=mean(cty)) %>% arrange(desc(avg_cty))

mpg2 %>% group_by(manufacturer) %>% summarise(hwy_avg=mean(hwy)) %>% arrange(desc(hwy_avg)) %>% head(3)
mpg2 %>% filter(class=="compact") %>% group_by(manufacturer)
