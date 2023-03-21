r <- 1
library(tidyverse)
setwd('D:/GIDHAB обучениие/A-B-Testing')
ABTest <- read.csv ('D:/GIDHAB обучениие/A-B-Testing/data/Website Results.csv', header = TRUE)
#давайте отфильтруем конверсии для варианта_A
conversion_subset_A <- ABTest %>% filter(variant =="A" & converted == "TRUE")
#Общее количество конверсий для варианта_A
conversion_A <- nrow(conversion_subset_A)
#Количество посетителей для варианта_A
visitors_A <- nrow(ABTest %>% filter(variant == 'A'))
#  конверсия 
convertion_rate_A <- (conversion_A/visitors_A)
print(convertion_rate_A)
