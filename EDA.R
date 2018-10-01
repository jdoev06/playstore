library(dplyr)
library(h2o)

apps <- read.csv("data/googleplaystore.csv",stringsAsFactors = F)
reviews <- read.csv("data/googleplaystore_user_reviews.csv",stringsAsFactors = F)
installRank <- data.frame(Installs = unique(apps$Installs), installRank = c(12,15,17,19,14,13,16,18,11,20,22,10,21,7,8,9,6,4,5,3,2,1),stringsAsFactors = F)
apps <- dplyr::inner_join(apps,installRank)

h2o.init()
