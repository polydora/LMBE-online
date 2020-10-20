
library(mailR)
library(dplyr)

base <- read.table("Data/56_schoole_2020.csv", sep = ",", header = T)
# adress <-  as.character(base$Mail[i])
# adress <-  "polydora@rambler.ru"

for(i in 1:nrow(base)){
  adress <-  as.character(base$Mail[i])
    send.mail(from = "polydora@rambler.ru",
              to = adress,
              subject = "Домашнее задание УИД!", 
              body =  "Data/letter2.txt",
              attach.files = "Data/Список гипотез о гагаямах.docx",
              smtp = list(host.name = "smtp.rambler.ru",port = 465,
                                       user.name = "Polydora",            
                                       passwd = "Mussel", ssl = TRUE),
              encoding = "utf-8",
              authenticate = TRUE,
              send = TRUE)
  
  print(i)
  
    
}


