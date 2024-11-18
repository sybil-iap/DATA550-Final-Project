# Understanding the Data
here::i_am("codes/code1_explore.R")
abs_long_path <- here::here("data/oasis_longitudinal.csv")
mri_long <- read.csv(abs_long_path,header = TRUE)
head(mri_long)

#Checking for null values
sort(apply(mri_long, 2, function(x){sum(is.na(x))}), decreasing = TRUE)
mri_long <- mri_long[!is.na(mri_long$MMSE),]
write.csv("data/derived_mri_long.csv")