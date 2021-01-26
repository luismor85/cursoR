#######################
#RANDOM FOREST - RPART#
#######################
https://rstudio-pubs-static.s3.amazonaws.com/368562_cafe2eb0179d42a790ac682000b6ed10.html


## function to install and load multiple packages at once in R

install_load <- function(pack){
  ## Statement to check if the package has been previously installed
  new_pack_load <- pack[!(pack %in% installed.packages()[,"Package"])]
  if (length(new_pack_load))
    install.packages(new_pack_load, dependencies = TRUE)
  sapply(pack, require, character.only = TRUE)
}

package_load <- c("corrr", "gridExtra", "ggplot2", "tidyverse", "dplyr", "DT", "MASS", "leaps", "glmnet", "PerformanceAnalytics", "tree", "rpart", "rpart.plot","randomForest", "ipred", "gbm")
install_load(package_load)

glimpse(Boston)
summary(Boston)

Boston %>%
  gather(-medv, key = "var", value = "value") %>%
  filter(var != "chas") %>%
  ggplot(aes(x = value, y = medv)) +
  geom_point() +
  stat_smooth() +
  facet_wrap(~ var, scales = "free") +
  theme_bw()

#Splitting the Data
set.seed(12420352)
index <- sample(nrow(Boston),nrow(Boston)*0.50)
Boston.train <- Boston[index,]
Boston.test <- Boston[-index,]

Boston.tree <- rpart(medv ~ ., data = Boston.train,  cp = 0.001)
rpart.plot(Boston.tree, type = 1, fallen.leaves = FALSE)

plotcp(Boston.tree)

printcp(Boston.tree)

prune.tree1 <- prune(Boston.tree, cp = 0.0085790)
prune.tree1

rpart.plot(prune.tree1, type =1, fallen.leaves = FALSE)


