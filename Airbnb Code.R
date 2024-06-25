#Install relevant libraries

library(foreign)
library(dplyr)
library(caret)
library(robustHD)
library(randomForest)
library(ggplot2)
library(party)
library(gridExtra)


# Remove Missing Values from any new variables: 

completeFun <- function(data, desiredCols) {
  completeVec <- complete.cases(data[, desiredCols])
  return(data[completeVec, ])
}

# Remove any outliers: 

remove_outliers <- function(x, na.rm = TRUE, ...) {
  qnt <- quantile(x, probs=c(.25, .75), na.rm = na.rm, ...)
  H <- 1.5 * IQR(x, na.rm = na.rm)
  y <- x
  y[x < (qnt[1] - H)] <- NA
  y[x > (qnt[2] + H)] <- NA
  y
}

# Compute Correlation Matrices:

corFun <- function(data, varCols){
  X_cor <- cor(data[, varCols], use="complete.obs")
  X_cor[, 1]
}


# Upload and View the Data Set:

df0 <- read.csv("Desktop/R Folder/airbnb/airBnBiData.csv", header = TRUE, stringsAsFactors = FALSE, check.names = FALSE)
dim(df0)
names(df0)
View(df0)
str(df0)
summary(df0)


# Rename Variables to Avoid Mistakes: 

df <- df0 %>%
  rename(
    price = Price,
    distance = Distance,
    superhost = Superhost,
    listing_no = `Listing No.`,
    host_listings = `Host listings count`,
    host_identity = `Host identity verified`,
    type_1 = `Accommodation type 1`,
    type_2 = `Accommodation type 2`,
    shared_room = `Shared room`,
    type_3 = `Accommodation type 3`,
    type_4 = `Accommodation type 4`,
    entire_home = `Entire home/apartment`,
    private_room = `Private room`,
    real_bed = `Real bed`,
    wireless = `Wireless Internet`,
    breakfast = Breakfast,
    accommodates = Accommodates,
    bathrooms = Bathrooms,
    bedrooms = Bedrooms,
    free_parking = `Free parking`,
    instant_bookable = `Instant bookable`,
    smoking = `Smoking allowed`,
    cancellation_policy = `Cancellation policy (Moderate plus strict)`,
    guest_profile = `Required guest's profile picture`,
    guest_phone = `Required guest's phone verification`,
    reviews_per_year = `Reviews per year`,
    overall_rating = `Review scores for overall rating`
  )

# Remove missing values from price column: 

df <- completeFun(df, c("price"))

# Check for outliers in dependent variable - price: 

boxplot(df$price)
summary(df$price)

# Remove the outlier in price:

df1 <- dplyr::filter(df, price < 4000)

boxplot(df1$price)
summary(df1$price)

# Data Exploration: 

# 1. Distribution of Price 

# a) Price vs Frequency

plot1 <- ggplot(df1, aes(price))+
  geom_histogram(color = "black", fill = "steelblue")+
  theme_bw()+
  xlab("Price")+
  ylab("Frequency")+
  ggtitle("Price vs Frequency")
plot(plot1)

# b) Price vs Super Host

df1$superhost <- as.factor(df1$superhost)

plot2 <- ggplot(df1, aes(x= superhost, y= price))+
  geom_boxplot(color = "black", fill = "steelblue")+
  theme_bw()+
  xlab("Superhost")+
  ylab("Price")+
ggtitle("Super Host vs Price")
plot(plot2)

# c) Price vs Overall Rating & Reviews per Year

plot3 <- ggplot(df1, aes(x= overall_rating, y= price))+
  geom_point(color= "steelblue")+
  theme_bw()+
  xlab("overall_rating")+
  ylab("Price")+
ggtitle("Overall Rating")
plot(plot3)

plot4 <- ggplot(df1, aes(x= reviews_per_year, y= price))+
  geom_point(color= "steelblue")+
  theme_bw()+
  xlab("reviews_per_year")+
  ylab("Price")+
ggtitle("Reviews per Year")
plot(plot4)

grid.arrange(plot3, plot4, ncol = 2)

# Use log(price) for better graphs:

df1 <- df1%>%
  dplyr::filter(price>0)%>%
  dplyr::mutate(log_price = log(price+1))

# d) Price vs distance

plot5 <- ggplot(df1, aes(x= distance, y= log_price))+
  geom_point(color= "steelblue")+
  geom_smooth(method = "lm")+
  theme_bw()+
  xlab("Distance")+
  ylab("Price (log)")+
ggtitle("Distance vs Price")
plot(plot5)

# e) Price vs Accommodates, Bedrooms, and Bathrooms 

plot6 <- ggplot(df1, aes(x= accommodates, y= log_price)) +
  geom_point(color= "steelblue") +
  geom_smooth(method="lm") +
  theme_bw() +
  xlab("Number of Accommodates") +
  ylab("Price (log)") +
  ggtitle("Accommodates")
plot(plot6)

plot7 <- ggplot(df1, aes(x= bedrooms, y= log_price)) +
  geom_point(color= "steelblue") +
  geom_smooth(method="lm") +
  theme_bw() +
  xlab("Number of Bedrooms") +
  ylab("Price (log)") +
  ggtitle("Bedrooms")
plot(plot7)

plot8 <- ggplot(df1, aes(x= bathrooms, y= log_price)) +
  geom_point(color= "steelblue") +
  geom_smooth(method="lm") +
  theme_bw() +
  xlab("Number of Bathrooms") +
  ylab("Price (log)") +
  ggtitle("Bathrooms")
plot(plot8)

df1 <- df1%>%
  dplyr::filter(host_listings<50)

plot9 <- ggplot(df1, aes(x= host_listings, y= log_price)) +
  geom_point(color= "steelblue") +
  geom_smooth(method="lm") +
  theme_bw() +
  xlab("Number of  Listings") +
  ylab("Price (log)") +
  ggtitle("Host Listings")
plot(plot9)

grid.arrange(plot6, plot7, plot8, plot9, ncol = 2)

# Model Building 

# 1. Conditional Regression Trees 

# Create Variable Sets

prefix <- "price~"
variable_set1 <- dplyr::select(df, superhost, host_listings, host_identity, distance, type_1, type_2, type_3, type_4)
variable_set2 <- dplyr::select(df, entire_home, private_room, shared_room, accommodates)
variable_set3 <- dplyr::select(df, bathrooms, bedrooms, real_bed, wireless, breakfast)
variable_set4 <- dplyr::select(df, instant_bookable, cancellation_policy, smoking, guest_profile, guest_phone, reviews_per_year, overall_rating)

# Create Formula to examine all variable sets

formula1 <- as.formula(paste(prefix, paste(c(names(variable_set1)), collapse = "+")))

formula2 <- as.formula(paste(prefix, paste(c(names(variable_set1), names(variable_set2)), collapse = "+")))

formula3 <- as.formula(paste(prefix, paste(c(names(variable_set1), names(variable_set2), names(variable_set3)), collapse = "+")))

formula4 <- as.formula(paste(prefix, paste(c(names(variable_set1), names(variable_set2), names(variable_set3), names(variable_set4)), collapse = "+")))

# Create Regression Trees

tree1 <- ctree(formula1, data=df1, control=ctree_control(mincriterion = 0.95, minsplit =1))
plot(tree1, type ="simple")

tree2 <- ctree(formula2, data=df1, control=ctree_control(mincriterion = 0.975))
plot(tree2, type ="simple")

tree3 <- ctree(formula3, data=df1, control=ctree_control(mincriterion = 0.975))
plot(tree3, type ="simple")

tree4 <- ctree(formula4, data=df1, control=ctree_control(mincriterion = 0.975, maxdepth = 5))
plot(tree4, type ="simple")

# Random Forest 

# Model 1

set.seed(100)
mydata = as.data.frame(df)
Ntree <- min(100)
model.rf <- randomForest(formula1, data=mydata, importance=TRUE, ntree =Ntree, na.action=na.omit)

set.seed(100)
mydata = as.data.frame(df)
Ntree <- min(1000)
model.rf <- randomForest(formula1, data=mydata, importance=TRUE, ntree =Ntree, na.action=na.omit)

# Model 1 Variable Importance 

importance(model.rf)
varImpPlot (model.rf)
plot(model.rf)

# Model 2

set.seed(100)
mydata = as.data.frame(df)
Ntree <- min(500)
model.rf <- randomForest(formula2, data=mydata, importance=TRUE, ntree =Ntree, na.action=na.omit)

# Model 2 Variable Importance 

importance(model.rf)
varImpPlot (model.rf)
plot(model.rf)

# Model 3

set.seed(100)
mydata = as.data.frame(df)
Ntree <- min(1500)
model.rf <- randomForest(formula3, data=mydata, importance=TRUE, ntree =Ntree, na.action=na.omit)

# Model 3 Variable Importance 

importance(model.rf)
varImpPlot (model.rf)
plot(model.rf)

# Model 4

set.seed(100)
mydata = as.data.frame(df)
Ntree <- min(3000)
model.rf <- randomForest(formula4, data=mydata, importance=TRUE, ntree =Ntree, na.action=na.omit)

# Model 4 Variable Importance 

importance(model.rf)
varImpPlot (model.rf)
plot(model.rf)

# Cross-Validation

set.seed(150)  # for reproducibility and comparison
train_control <- trainControl(method = "cv", number = 10) # 10 is for number of folds

models <- list()
formulas <- list(formula1, formula2, formula3, formula4) # to calculate all models together 

df_2 <- na.omit(df1) # to ensure no missing values

for (i in 1:length(formulas)) {
  set.seed(123)  # Reset seed for reproducibility in each iteration
  models[[i]] <- train(
    formulas[[i]],
    data = df_2,
    method = "rf",
    trControl = train_control
  )
}

results <- resamples(models)
summary(results)

bwplot(results)






