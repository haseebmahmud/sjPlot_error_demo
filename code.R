library(sjPlot)
library(sjmisc)
library(sjlabelled)

data1 <- read_spss("data1.sav", atomic.to.fac = TRUE)
data2 <- read_spss("data2.sav", atomic.to.fac = TRUE)
all_plyr1 <- plyr::rbind.fill(data1, data2)

sjp.frq(all_plyr1$var1)

data3 <- read_spss("data1.sav", atomic.to.fac = TRUE) %>% drop_labels()
data4 <- read_spss("data2.sav", atomic.to.fac = TRUE) %>% drop_labels()
all_plyr2 <- plyr::rbind.fill(data3, data4)

sjp.frq(all_plyr2$var1)
