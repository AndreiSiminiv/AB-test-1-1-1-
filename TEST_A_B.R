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

#  конверсия процент
convertion_rate_A <- (conversion_A/visitors_A)
print(convertion_rate_A) #0.02773925

# повторить с пользователями В
conversion_subset_B <- ABTest %>%  filter(variant == 'B' & converted == 'TRUE')
conversion_B <- nrow(conversion_subset_B)
visitors_B <- nrow(ABTest %>%  filter(variant == 'B'))
convertion_rate_B <- (conversion_B/visitors_B)
print (convertion_rate_B) #0.05068493

# вычислим относительный рост, используя коэффициенты конверсии 
#A и B. Повышение – это процент от увеличения.
uplift <- (convertion_rate_B - convertion_rate_A)/ convertion_rate_A * 100
uplift #82%

#Вычислите Z-оценку, чтобы мы могли определить значение p
  
 

