## code to prepare `DATASET` dataset goes here

usethis::use_data(DATASET, overwrite = TRUE)
lm_patho<-read.table("C:/Users/Xining/Dropbox/My PC (DESKTOP-Q77OU8J)/Desktop/Campus/First Year/First Semester/Computitional Statistics/bis557/data/lm_patho.csv",header=TRUE, sep=",")
use_data(lm_patho)
